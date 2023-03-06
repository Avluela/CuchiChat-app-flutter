import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: const SafeArea(
            child: Image(
              image: AssetImage('assets/cuchi_chat_logo.png'),
            ),
          ),
        ),
      ),
    );
  }
}
