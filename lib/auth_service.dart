import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:device_info_plus/device_info_plus.dart';

import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String?> _getDeviceId() async {
    final deviceInfo = DeviceInfoPlugin();
    if (Platform.isAndroid) {
      final androidInfo = await deviceInfo.androidInfo;
      return androidInfo.id; // unique ID on Android
    } else if (Platform.isIOS) {
      final iosInfo = await deviceInfo.iosInfo;
      return iosInfo.identifierForVendor; // unique ID on iOS
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
  // Stream to listen to auth state changes
  Stream<User?> get user => _auth.authStateChanges();

  // Verify phone number and handle OTP
  Future<void> verifyPhoneNumber({
    required String phoneNumber,
    required Function(PhoneAuthCredential) verificationCompleted,
    required Function(FirebaseAuthException) verificationFailed,
    required Function(String, int?) codeSent,
    required Function(String) codeAutoRetrievalTimeout,
  }) async {
    await _auth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: verificationCompleted,
      verificationFailed: verificationFailed,
      codeSent: codeSent,
      codeAutoRetrievalTimeout: codeAutoRetrievalTimeout,
    );
  }

  // Sign in with phone credential (OTP)
  Future<User?> signInWithCredential(PhoneAuthCredential credential) async {
    try {
      final result = await _auth.signInWithCredential(credential);
      User? user = result.user;
      if (user != null) {
        final deviceId = await _getDeviceId();
        await _firestore
            .collection('user_sessions')
            .doc(user.uid)
            .set({'active_device_id': deviceId});
      }
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // Sign in with phone number and password
  Future<User?> signInWithPhoneAndPassword(String phoneNumber, String password) async {
    try {
      // Firebase doesn't support phone+password directly.
      // We construct a dummy email from the phone number to sign in.
      final String dummyEmail = '+$phoneNumber@anarrakshak.app';
      UserCredential result = await _auth.signInWithEmailAndPassword(
        email: dummyEmail,
        password: password,
      );
      User? user = result.user;
      if (user != null) {
        final deviceId = await _getDeviceId();
        await _firestore.collection('user_sessions').doc(user.uid).set({'active_device_id': deviceId});
      }
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // Sign up with phone credential (OTP) and set a password
  Future<User?> signUpWithPhoneAndPassword(String phoneNumber, String password) async {
    try {
      // Create a user with a dummy email and the provided password.
      final String dummyEmail = '+$phoneNumber@anarrakshak.app';
      UserCredential result = await _auth.createUserWithEmailAndPassword(email: dummyEmail, password: password);
      User? user = result.user;
      if (user != null) {
        final deviceId = await _getDeviceId();
        await _firestore.collection('user_sessions').doc(user.uid).set({'active_device_id': deviceId});
      }
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // Sign out
  Future<void> signOut() async {
    final user = _auth.currentUser;
    if (user != null) {
      // Delete the session document on sign out for a clean logout.
      await _firestore.collection('user_sessions').doc(user.uid).delete();
    }
    await _auth.signOut();
  }
}