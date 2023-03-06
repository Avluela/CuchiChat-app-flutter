import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  const CustomInput(
      {super.key,
      required this.icon,
      required this.placeholder,
      required this.textController,
      this.keyboardType = TextInputType.text,
      this.isPassword = false});

  final IconData icon;
  final String placeholder;
  final TextEditingController textController;
  final TextInputType keyboardType;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.only(left: 5, right: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black.withOpacity(0.05),
                offset: const Offset(0, 5),
                blurRadius: 5)
          ]),
      child: TextField(
        controller: textController,
        obscureText: isPassword,
        autocorrect: false,
        keyboardType: TextInputType.emailAddress,
        autofocus: true,
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
          focusedBorder: InputBorder.none,
          border: InputBorder.none,
          hintText: placeholder,
        ),
      ),
    );
  }
}
