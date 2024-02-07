import 'package:flutter/material.dart';

class CustomSocialMedia extends StatelessWidget {
  final String imageUrl;
  const CustomSocialMedia({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
              image: AssetImage(imageUrl),
              fit: BoxFit.cover)),
    );
  }
}
