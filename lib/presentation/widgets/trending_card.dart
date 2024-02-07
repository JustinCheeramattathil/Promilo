import 'package:flutter/material.dart';
import 'package:promilo/core/constants/constants.dart';
import 'package:promilo/presentation/utils/colors.dart';

class TrendingCard extends StatelessWidget {
  final String image;
  final String text;
  final String text1;
  const TrendingCard({
    super.key,
    required this.image,
    required this.text,
    required this.text1,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Container(
        height: 185,
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: loginColor,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: loginColor),
                        image: DecorationImage(
                            image: AssetImage(image), fit: BoxFit.cover)),
                  ),
                  kwidth10,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        text,
                        style: const TextStyle(
                            color: loginColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        '$text1 MeetUps',
                        style: const TextStyle(color: kgreyColor),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Divider(),
            ),
            const SizedBox(
              height: 80,
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned(
                    left: 10,
                    top: 10,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1qDXQwq0FlwJKq_t0tjdzEn7eHN_Ec-3GZQ'),
                      radius: 25,
                    ),
                  ),
                  Positioned(
                    left: 46,
                    top: 10,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3bsLimWptY5mpryDP69NVCxmSIxYUuxi_7A'),
                      radius: 25,
                    ),
                  ),
                  Positioned(
                    left: 80,
                    top: 10,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOOIV-fBm191UceJl-jskKZd7Dyd9ZZHnrMg'),
                      radius: 25,
                    ),
                  ),
                  Positioned(
                    left: 110,
                    top: 10,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiTdPeoWRUNcjPaBqiOW_8dXq5gjXwmGT3-w'),
                      radius: 25,
                    ),
                  ),
                  Positioned(
                    left: 140,
                    top: 10,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-bhTZ5zPU7xstX58WAg909Zr9icONsWwapw'),
                      radius: 25,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    height: 25,
                    width: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color.fromARGB(255, 19, 99, 165)),
                    child: const Center(
                        child: Text(
                      'See more',
                      style: TextStyle(color: kwhiteColor),
                    )),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
