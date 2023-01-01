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
            // ignore: prefer_const_literals_to_create_immutables
            child: Row(children: [
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
          Form(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Material(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(25.0),
                  child: TextFormField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      hintText: 'Search your favorite food ',
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      contentPadding: const EdgeInsets.all(10.0),
                      prefixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.search, color: Colors.black),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.tune_outlined,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please search a favorite food';
                      }
                      return null;
                    },
                  ),
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
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    child: Center(
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20.0,
                            vertical: 10.0,
                          ),
                          child: Text(
                            'Salads',
                            style: TextStyle(color: Colors.white),
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
