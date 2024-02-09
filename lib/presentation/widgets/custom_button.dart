import 'package:flutter/material.dart';
import 'package:promilo/presentation/utils/colors.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Color borderColor;

  const CustomButton({
    super.key,
    required this.onPressed,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: borderColor, width: 2),
            color: const Color.fromARGB(255, 192, 222, 247),
          ),
          child: const Center(
              child: Text(
            'Submit',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: kwhiteColor,
            ),
          )),
        ),
      ),
    );
  }
}
