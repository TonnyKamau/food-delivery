// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(children: const [
              Text(
                'Get Your ',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
              Text(
                'Best',
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            // ignore: prefer_const_literals_to_create_immutables
            child: Row(children: [
              Text(
                'Food ',
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
              Text(
                'Around You',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              cursorColor: Theme.of(context).colorScheme.inversePrimary,
              decoration: InputDecoration(
                hintText: "Search your favorite food ",
                hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                prefixIcon: Container(
                  margin: const EdgeInsets.only(right: 5, bottom: 5, top: 5),
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        20), // half of the width or height
                  ),
                  child:  Icon(
                    Icons.search,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                suffixIcon: Container(
                  margin: const EdgeInsets.only(left: 5, bottom: 5, top: 5),
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        20), // half of the width or height
                  ),
                  child: RotatedBox(
                    quarterTurns: 3,
                    child: Icon(
                      Icons.tune,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                ),
                filled: true,
                fillColor: Theme.of(context).colorScheme.secondary,
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  'Find ',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  '5km  >',
                  style: TextStyle(fontSize: 15.0, color: Colors.red),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              color: Theme.of(context).colorScheme.tertiary,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    child: Center(
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        color: Theme.of(context).colorScheme.inversePrimary,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20.0,
                            vertical: 10.0,
                          ),
                          child: Text(
                            'Salads',
                            style: TextStyle(color: Theme.of(context).colorScheme.tertiary,)
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    child: Center(
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20.0,
                            vertical: 10.0,
                          ),
                          child: Text(
                            'Hot Sales',
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    child: Center(
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20.0,
                            vertical: 10.0,
                          ),
                          child: Text(
                            'Popularity',
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
