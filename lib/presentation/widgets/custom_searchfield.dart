import 'package:flutter/material.dart';
import 'package:promilo/presentation/utils/colors.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 46,
        child: TextField(
          decoration: InputDecoration(
            suffixIcon: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset('assets/images/micicon.png'),
            ),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/images/search.png'),
            ),
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(color: loginColor, width: 1.5),
            ),
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(color: loginColor, width: 1.5),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: loginColor, width: 1.5),
            ),
          ),
        ),
      ),
    );
  }
}
