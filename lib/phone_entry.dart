import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class PhoneEntryScreen extends StatefulWidget {
  const PhoneEntryScreen({super.key});

  @override
  State<PhoneEntryScreen> createState() => _PhoneEntryScreenState();
}

class _PhoneEntryScreenState extends State<PhoneEntryScreen> {
  String? otpVerificationId;

  bool get otpSent => otpVerificationId != null;

  sendPhone(String phone) async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: '+91 $phone',
      verificationCompleted: (PhoneAuthCredential credential) {},
      verificationFailed: (FirebaseAuthException e) {
        debugPrint("Failed $e");
        debugPrintStack(stackTrace: e.stackTrace);
      },
      codeSent: (String verificationId, int? resendToken) {
        setState(() {
          otpVerificationId = verificationId;
        });
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  verifyOTP(String otp) async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: otpVerificationId!, smsCode: otp);
    var user = await FirebaseAuth.instance.signInWithCredential(credential);
    debugPrint("User signedin");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextField(
              onSubmitted: sendPhone,
              keyboardType: TextInputType.phone,
              enabled: !otpSent,
              textInputAction: TextInputAction.go,
              decoration: InputDecoration(
                prefixText: '+91 ',
                labelText: 'Enter Phone Number',
              ),
            ),
            AnimatedSize(
              duration: Duration(milliseconds: 700),
              child: otpSent
                  ? TextField(
                      onSubmitted: verifyOTP,
                      autofocus: true,
                      keyboardType: TextInputType.phone,
                      textInputAction: TextInputAction.go,
                      decoration: InputDecoration(
                        labelText: 'enter OTP',
                      ),
                    )
                  : const SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}
