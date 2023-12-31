import 'package:donutgram/constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    required this.buttonText,
    required this.isGoogle,
    required this.callBackFunction,
    this.email,
    this.password,
    super.key,
  });

  final String? email;
  final String? password;
  final String buttonText;
  final VoidCallback callBackFunction;
  final bool isGoogle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widthLoginButton,
      height: heightLoginButton,
      child: ElevatedButton(
        onPressed: callBackFunction,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderLoginCircular),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            isGoogle
                ? const FaIcon(FontAwesomeIcons.google, color: Colors.black)
                : Container(),
            const SizedBox(width: sizedIconWidth),
            Center(
              child: Text(
                buttonText,
                style: const TextStyle(
                    fontSize: buttonTextSize, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
