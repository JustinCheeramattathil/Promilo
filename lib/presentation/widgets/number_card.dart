import 'package:flutter/material.dart';
import 'package:promilo/presentation/utils/colors.dart';
import 'package:promilo/presentation/widgets/concave_clipper.dart';

class NumberCard extends StatelessWidget {
  final String number;
  const NumberCard({Key? key, required this.number})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Center(
        child: Stack(
          children: [
            Container(
              height: 280,
              width: 210,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/viyaj.jpg'),
                      fit: BoxFit.cover)),
            ),
            Positioned(
              top: 140,
              right: 0,
              child: ClipPath(
                clipper: ConcaveClipper(),
                child: Container(
                  height: 30,
                  width: 30,
                  color: kwhiteColor,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                height: 110,
                width: 100,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                    ),
                    color: kwhiteColor),
                child: Center(
                    child: Text(
                  '0$number',
                  style: const TextStyle(
                    fontSize: 75,
                    fontWeight: FontWeight.bold,
                    color: loginColor,
                  ),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
