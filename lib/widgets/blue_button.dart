import 'package:flutter/material.dart';

class BlueCustomButton extends StatelessWidget {
  const BlueCustomButton({
    super.key,
    required this.label,
    required this.onPressed,
  });

  final String label;

  // final void Function() onPressed;   //funciona
  // final VoidCallback onPressed;      //Tambien funciona
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(3.0),
        backgroundColor: MaterialStateProperty.all(Colors.blue),
        shape: MaterialStateProperty.all(const StadiumBorder()),
      ),
      onPressed: onPressed,
      child: SizedBox(
        height: 45,
        width: double.infinity,
        child: Center(
          child: Text(label),
        ),
      ),
    );
  }
}
