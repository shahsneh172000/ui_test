import 'dart:async';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SessionValidator extends StatefulWidget {
  final Widget child;
  const SessionValidator({super.key, required this.child});

  @override
  State<SessionValidator> createState() => _SessionValidatorState();
}

class _SessionValidatorState extends State<SessionValidator> {
  StreamSubscription? _sessionSubscription;

  @override
  void initState() {
    super.initState();
    if (FirebaseAuth.instance.currentUser != null) {
      _startSessionValidation();
    }
  }

  @override
  void dispose() {
    _sessionSubscription?.cancel(); // Cancel subscription to prevent memory leaks
    super.dispose();
  }

  Future<String?> _getDeviceId() async {
    final deviceInfo = DeviceInfoPlugin();
    if (Platform.isAndroid) {
      final androidInfo = await deviceInfo.androidInfo;
      return androidInfo.id;
    } else if (Platform.isIOS) {
      final iosInfo = await deviceInfo.iosInfo;
      return iosInfo.identifierForVendor;
    } else if (Platform.isLinux) {
      final linuxInfo = await deviceInfo.linuxInfo;
      return linuxInfo.machineId;
    } else if (Platform.isMacOS) {
      final macOsInfo = await deviceInfo.macOsInfo;
      return macOsInfo.systemGUID;
    } else if (Platform.isWindows) {
      final windowsInfo = await deviceInfo.windowsInfo;
      return windowsInfo.deviceId;
    }
    return null;
  }

  void _startSessionValidation() {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) return;

    final docRef = FirebaseFirestore.instance.collection('user_sessions').doc(user.uid);
    
    _sessionSubscription = docRef.snapshots().listen((snapshot) async {
      if (!mounted) return;

      // If the document doesn't exist, it means the user has been logged out elsewhere
      // or the session was cleaned up. So, we sign out locally.
      if (!snapshot.exists) {
        await FirebaseAuth.instance.signOut();
        return;
      }

      final data = snapshot.data();
      final activeDeviceId = data?['active_device_id'];
      final currentDeviceId = await _getDeviceId();

      if (activeDeviceId != null && activeDeviceId != currentDeviceId) {
        await FirebaseAuth.instance.signOut();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}