import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  final String text;
  const MyButton({super.key, this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(25),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onTertiary,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(text,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.surface,
                  fontSize: 16,
                  fontFamily: 'OpenSans',
                  fontWeight: FontWeight.w600,
                )),
          ),
        ));
  }
}
