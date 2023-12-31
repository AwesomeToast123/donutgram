import 'package:donutgram/constant.dart';
import 'package:donutgram/features/signup_form_screen.dart';
import 'package:donutgram/widgets/authentication_widgets/login_button.dart';
import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';


class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child:   Container(
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
              LoginButton(
                buttonText: signUpGoogle,
                isGoogle: true,
                callBackFunction: () {},
              ),
              const SizedBox(height: sizedBoxDividerHeight),
              const Text(
                orText,
                style: TextStyle(
                  fontSize: orTextFontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: sizedBoxDividerHeight),
              LoginButton(
                buttonText: signUpButtonText,
                isGoogle: false,
                callBackFunction: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SignUpFormScreen()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
