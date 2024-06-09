import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;
  final List<String> tabs;

  const MyTabBar({
    super.key,
    required this.tabController,
    required this.tabs,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TabBar(
        tabAlignment: TabAlignment.start,
        dividerColor: Colors.transparent,
        isScrollable: true,
        splashFactory: NoSplash.splashFactory,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorColor: Colors.transparent,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Theme.of(context).colorScheme.onTertiary,
        ),
        unselectedLabelColor: Theme.of(context).colorScheme.onTertiary,
        labelColor: Theme.of(context).colorScheme.surface,
        labelPadding: const EdgeInsets.symmetric(horizontal: 20),
        controller: tabController,
        labelStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          fontFamily: 'OpenSans',
        ),
        tabs: tabs.map((tab) => Tab(text: tab)).toList(),
      ),
    );
  }
}
