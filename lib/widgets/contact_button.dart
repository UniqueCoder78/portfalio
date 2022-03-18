import 'package:flutter/material.dart';

class ContactButton extends StatelessWidget {
  final String? buttonText;
  final Widget? icon;
  final VoidCallback? onPressed;
  const ContactButton({
    Key? key,
    this.buttonText,
    this.icon,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9.0),
      child: TextButton.icon(
        onPressed:onPressed,
        icon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: icon,
        ),
        label: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('$buttonText'),
        ),
        style: TextButton.styleFrom(
            backgroundColor: Colors.yellow,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            )),
      ),
    );
  }
}
