import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ImageContainer extends StatelessWidget {
  final double height;
  final double width;
  final String imageUrl;
  final FaIcon isFavorite;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final double? borderRadius;
  final Widget? child;
  final VoidCallback? onTap;
  const ImageContainer({
    Key? key,
    required this.height,
    required this.width,
    required this.imageUrl,
    this.padding,
    this.margin,
    this.borderRadius,
    this.child,
    this.onTap,
    required this.isFavorite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: height,
          width: width,
          padding: padding,
          margin: margin,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius ?? 0),
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
          child: child,
        ),
        Positioned(
          top: 10,
          right: 10,
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Theme.of(context).colorScheme.secondary,
            child: Center(
              child: isFavorite,
            ),
          ),
        ),
      ],
    );
  }
}
