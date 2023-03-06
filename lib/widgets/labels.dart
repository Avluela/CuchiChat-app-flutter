import 'package:flutter/material.dart';

class Labels extends StatelessWidget {
  const Labels(
      {super.key,
      required this.ruta,
      required this.title,
      required this.subtitle});

  final String ruta;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.black54,
            fontSize: 16,
            fontWeight: FontWeight.w300,
          ),
        ),
        const SizedBox(height: 10),
        GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, ruta);
            },
            child: Text(
              subtitle,
              style: const TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            )),
      ],
    );
  }
}
