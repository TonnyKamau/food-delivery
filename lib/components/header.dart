// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'OpenSans',
                color: Theme.of(context).colorScheme.onTertiary,
              ),
              text: 'Get',
              children: const [
                TextSpan(
                  text: ' Your',
                ),
                TextSpan(
                  text: ' Best',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'OpenSans',
                color: Theme.of(context).colorScheme.onTertiary,
              ),
              children: const [
                TextSpan(
                  text: 'Food',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextSpan(
                  text: ' Around',
                ),
                TextSpan(text: ' You'),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextFormField(
            cursorColor: Theme.of(context).colorScheme.inversePrimary,
            decoration: InputDecoration(
              hintText: "Search your favorite food ",
              hintStyle: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 16,
                    fontFamily: 'OpenSans',
                  ),
              prefixIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  'assets/icons/search.svg',
                  color: Theme.of(context).colorScheme.onTertiary,
                ),
              ),
              suffixIcon: RotatedBox(
                quarterTurns: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    'assets/icons/slider-01.svg',
                    color: Theme.of(context).colorScheme.onTertiary,
                  ),
                ),
              ),
              filled: true,
              fillColor: Theme.of(context).colorScheme.secondary,
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                'Find ',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Theme.of(context).colorScheme.onTertiary,
                  fontFamily: 'OpenSans',
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                '5km  >',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.red,
                  fontFamily: 'OpenSans',
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
