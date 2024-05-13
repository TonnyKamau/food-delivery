import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MySilverAppBar extends StatelessWidget {
  final Widget title;
  final Widget child;
  const MySilverAppBar({super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 340.0,
      collapsedHeight: 120,
      floating: false,
      pinned: true,
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/cart.svg',
              color: Theme.of(context).colorScheme.onTertiary,
            ),
          ),
        ),
      ],
      leading: Builder(
        builder: (context) => IconButton(
          icon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              'assets/icons/menu-navigation-grid.svg',
              color: Theme.of(context).colorScheme.onTertiary,
            ),
          ),
          onPressed: () => Scaffold.of(context).openDrawer(),
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Center(
        child: Text(
          'Diner',
          style: TextStyle(
            color: Theme.of(context).colorScheme.onTertiary,
            fontFamily: 'OpenSans',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      flexibleSpace: FlexibleSpaceBar(
        title: title,
        centerTitle: true,
        expandedTitleScale: 1,
        titlePadding: const EdgeInsets.only(left:0, right: 0, top: 0),
        background: Padding(
          padding: const EdgeInsets.only(bottom: 50.0),
          child: child,
        ),
      ),
    );
  }
}
