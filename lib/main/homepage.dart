import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery/components/header.dart';
import 'package:food_delivery/components/my_drawer.dart';
import 'package:food_delivery/components/my_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> tabs = [
      "Salads",
      "Hot sale",
      "Popularity",
    ];

    return DefaultTabController(
        initialIndex: 0,
        length: tabs.length,
        child: Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
         appBar: MyAppBar(
            title: Center(
              child: Text(
                'Home',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onTertiary,
                  fontFamily: 'OpenSans',
                  fontWeight: FontWeight.w600,
                ),
              
              ),
            ),
          ),
          drawer: const MyDrawer(),
          body: ListView(children: [
            const Header(),
            const SizedBox(
              height: 20,
            ),
            _Categories(tabs: tabs),
            const SizedBox(
              height: 20,
            ),
          ]),
        ));
  }
}

class _Categories extends StatelessWidget {
  const _Categories({super.key, required this.tabs});
  final List<String> tabs;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: Material(
        color: Colors.transparent,
        child: TabBar(
          splashFactory: NoSplash.splashFactory,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorColor: Colors.transparent,
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Theme.of(context).colorScheme.onTertiary,
          ),
          unselectedLabelColor: Theme.of(context).colorScheme.onTertiary,
          labelColor: Theme.of(context).colorScheme.background,
          tabs: tabs
              .map(
                (e) => Tab(
                  child: Text(
                    e,
                    style: const TextStyle(
                      fontSize: 16,
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
