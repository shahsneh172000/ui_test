import 'package:flutter/material.dart';
import 'package:ui_test/auth_service.dart';

class RegisterScreen extends StatefulWidget {
  final VoidCallback showLoginScreen;
  const RegisterScreen({super.key, required this.showLoginScreen});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  String phoneNumber = '';
  String password = '';
  String error = '';
  bool loading = false;
  bool _passwordVisible = false;

  Future<void> _signUp() async {
    if (_formKey.currentState!.validate()) {
      setState(() => loading = true);
      final String fullPhoneNumber = '91${phoneNumber.trim()}';
      dynamic result = await _auth.signUpWithPhoneAndPassword(fullPhoneNumber, password);
      if (result == null) {
        setState(() {
          error = 'Failed to sign up. This phone number might already be in use.';
          loading = false;
        });
      }
    }
    // On success, AuthWrapper will navigate to home
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7F6),
      appBar: AppBar(
        title: const Text('Sign Up for AnarRakshak'),
        backgroundColor: const Color(0xFF487530),
        foregroundColor: Colors.white,
      ),
      body: loading
          ? const Center(child: CircularProgressIndicator())
          : Container(
              child: SingleChildScrollView(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        const SizedBox(height: 20.0),
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Phone Number',
                            prefixText: '+91 ',
                          ),
                          keyboardType: TextInputType.phone,
                          validator: (val) => val!.length != 10
                              ? 'Enter a valid 10-digit phone number'
                              : null, // Basic validation
                          onChanged: (val) {
                            setState(() => phoneNumber = val);
                          },
                        ),
                        const SizedBox(height: 20.0),
                        TextFormField(
                          obscureText: !_passwordVisible,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            suffixIcon: IconButton(
                              icon: Icon(
                                _passwordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                              onPressed: () {
                                setState(() => _passwordVisible = !_passwordVisible);
                              },
                            ),
                          ),
                          validator: (val) => val!.length < 6
                              ? 'Enter a password 6+ chars long'
                              : null,
                          onChanged: (val) {
                            setState(() => password = val);
                          },
                        ),
                        const SizedBox(height: 20.0),
                        TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(hintText: 'Confirm Password'),
                          validator: (val) => val != password ? 'Passwords do not match' : null,
                        ),
                        const SizedBox(height: 20.0),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF39794F),
                            foregroundColor: Colors.white,
                          ),
                          child: const Text('Sign Up'),
                          onPressed: () async {
                            await _signUp();
                          },
                        ),
                        const SizedBox(height: 12.0),
                        Text(
                          error,
                          style: const TextStyle(color: Colors.red, fontSize: 14.0),
                        ),
                        TextButton(
                          onPressed: widget.showLoginScreen,
                          child: const Text('Already have an account? Sign In'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
    );
  }
}