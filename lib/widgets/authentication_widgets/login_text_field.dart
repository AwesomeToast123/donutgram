import 'package:donutgram/constant.dart';
import 'package:flutter/material.dart';

class LoginTextFieldWidget extends StatefulWidget {
  const LoginTextFieldWidget({
    required this.hintText,
    required this.controller,
    required this.isPassword,
    super.key,
  });

  final String hintText;
  final TextEditingController controller;
  final bool isPassword;

  @override
  State<LoginTextFieldWidget> createState() => _LoginTextFieldWidgetState();
}

class _LoginTextFieldWidgetState extends State<LoginTextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.isPassword,
      autocorrect: widget.isPassword,
      enableSuggestions: true,
      controller: widget.controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: widget.hintText,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        contentPadding: const EdgeInsets.symmetric(
            vertical: paddingInsetsVertical,
            horizontal: paddingInsetsHorizontal),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(radiusCircular)),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide:
              BorderSide(color: Colors.white, width: enabledBorderSideWidth),
          borderRadius: BorderRadius.all(Radius.circular(radiusCircular)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
              color: Colors.lightBlueAccent, width: focusedBorderSideWidth),
          borderRadius: BorderRadius.all(Radius.circular(radiusCircular)),
        ),
      ),
    );
  }
}
