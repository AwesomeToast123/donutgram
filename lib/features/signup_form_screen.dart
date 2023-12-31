import 'package:donutgram/constant.dart';
import 'package:donutgram/services/authentication.dart';
import 'package:donutgram/widgets/authentication_widgets/login_button.dart';
import 'package:donutgram/widgets/authentication_widgets/login_text_field.dart';
import 'package:flutter/material.dart';

class SignUpFormScreen extends StatefulWidget {
  const SignUpFormScreen({super.key});

  @override
  State<SignUpFormScreen> createState() => _SignUpFormScreenState();
}

class _SignUpFormScreenState extends State<SignUpFormScreen> {
  final TextEditingController _registerEmail = TextEditingController();
  final TextEditingController _regiterPassword = TextEditingController();
  final TextEditingController _regiterConfirmPassword = TextEditingController();
  AuthService signUp = AuthService();

  @override
  void dispose() {
    _registerEmail.dispose();
    _regiterPassword.dispose();
    _regiterConfirmPassword.dispose();
    
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: const EdgeInsets.all(loginScreenPadding),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background_login.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('images/donut.jpg'),
              maxRadius: circleAvatarRadiusSignIn,
            ),
            const Text(
              donutgramTitle,
              style: TextStyle(
                fontFamily: 'Taprom',
                fontSize: donutgramTitleSize,
              ),
            ),
            const SizedBox(height: sizedBoxDividerHeightIcon),
            LoginTextFieldWidget(
              hintText: emailText,
              controller: _registerEmail,
              isPassword: false,
            ),
            const SizedBox(height: textFieldSizedBoxHeight),
            LoginTextFieldWidget(
              hintText: passwordText,
              controller: _regiterPassword,
              isPassword: true,
            ),
            const SizedBox(height: textFieldSizedBoxHeight),
            LoginTextFieldWidget(
                hintText: passwordText,
                controller: _regiterConfirmPassword,
                isPassword: true),
            const SizedBox(height: sizedBoxDividerHeightIcon),
            LoginButton(
              buttonText: signUpConfirmationButtonText,
              isGoogle: false,
              callBackFunction: () {
                signUp.signUpWithEmailAndPassword(
                  email: _registerEmail.text,
                  password: _regiterPassword.text,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
