import 'package:donutgram/constant.dart';
import 'package:donutgram/features/home_screen.dart';
import 'package:donutgram/features/signup_screen.dart';
import 'package:donutgram/services/authentication.dart';
import 'package:donutgram/widgets/authentication_widgets/login_button.dart';
import 'package:donutgram/widgets/authentication_widgets/login_text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  AuthService signIn = AuthService();

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(loginScreenPadding),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/background_login.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
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
              LoginButton(
                buttonText: signInGoogle,
                isGoogle: true,
                callBackFunction: () {},
              ),
              const Text(
                orText,
                style: TextStyle(
                  fontSize: orTextFontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LoginTextFieldWidget(
                    hintText: emailText,
                    controller: _email,
                    isPassword: false,
                  ),
                  const SizedBox(height: textFieldSizedBoxHeight),
                  LoginTextFieldWidget(
                    hintText: passwordText,
                    controller: _password,
                    isPassword: true,
                  ),
                  Row(
                    children: [
                      const SizedBox(width: sizedBoxForgotPassword),
                      GestureDetector(
                        onTap: () => _handleResetPassword(context),
                        child: const Text(
                          forgotPasswordText,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: forgotPasswordFontSize,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(height: textFieldButtonBoxHeight),
              LoginButton(
                buttonText: signInButtonText,
                email: _email.toString(),
                password: _password.toString(),
                isGoogle: false,
                callBackFunction: () => _handleSignIn(context),
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignupScreen()),
                ),
                child: const Text(
                  dontHaveAnAccount,
                  style: TextStyle(
                    fontSize: dontHaveAnAccountFontSize,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _handleSignIn(BuildContext context) async {
    UserCredential? result = await signIn.signInWithEmailAndPassword(
        email: _email.text, password: _password.text);

    if (!context.mounted) return;

    if (result != null) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    } else {
      print("Sign in Unsuccessful");
    }
  }

  Future<void> _handleResetPassword(BuildContext context) async {
    await signIn.resetPassword(email: _email.text);

    if (!context.mounted) return;

    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(confirmedText),
          content: const Text(emailResetText),
          actions: [
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text(okText),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
