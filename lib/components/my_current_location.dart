import 'package:flutter/material.dart';

import 'package:lucide_icons/lucide_icons.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  @override
  Widget build(BuildContext context) {
    void openSearchLocation(BuildContext context) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: const Text('Your Location'),
                content: TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your location',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                actions: [
                  MaterialButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text(
                      'Cancel',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onTertiary,
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text('Save',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onTertiary,
                        )),
                  ),
                ],
              ));
    }

    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Deliver Now',
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontFamily: 'OpenSans',
              fontSize: 15,
            ),
          ),
          GestureDetector(
            onTap: () => openSearchLocation(context),
            child: Row(
              children: [
                //address
                Text('Nakuru',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onTertiary,
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    )),
                //drop down menu
                Icon(
                  LucideIcons.chevronDown,
                  color: Theme.of(context).colorScheme.onTertiary,
                  size: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
