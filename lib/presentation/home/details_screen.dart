// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:promilo/application/home_card_provider.dart';
import 'package:promilo/core/constants/constants.dart';
import 'package:promilo/presentation/utils/colors.dart';
import 'package:promilo/presentation/widgets/action_bar.dart';
import 'package:promilo/presentation/widgets/bottom_nav.dart';
import 'package:provider/provider.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int _currentPageIndex = 0;

  List<String> image = [
    'assets/images/beach1.jpg',
    'assets/images/beach2.jpg',
    'assets/images/beach3.jpg',
    'assets/images/beach4.jpg',
    'assets/images/beach5.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final homeProvider = Provider.of<HomeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kwhiteColor,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back_ios,
            size: 20,
          ),
        ),
        title: const Text(
          'Description',
          style: TextStyle(
              fontSize: 23, color: loginColor, fontWeight: FontWeight.w500),
        ),
        shadowColor: Colors.black,
        elevation: 2,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            kheight10,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Stack(
                children: [
                  Container(
                    height: 378,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 194, 193, 193)
                          .withOpacity(0.7),
                    ),
                    child: Column(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20)),
                              color: kwhiteColor),
                          height: 320,
                          width: double.infinity,
                          child: PageView.builder(
                            onPageChanged: (index) {
                              setState(() {
                                _currentPageIndex = index;
                              });
                            },
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 0.4),
                                child: Container(
                                  height: 100,
                                  width: 330,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(image[index]),
                                          fit: BoxFit.cover),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10),
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                      ),
                                      color: Colors.red),
                                ),
                              );
                            },
                          ),
                        ),
                        const ActionBar(),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 290,
                    left: 110,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        5,
                        (index) => GestureDetector(
                          onTap: () {
                            homeProvider.setCurrentPage(index);
                          },
                          child: Container(
                            width: 10,
                            height: 10,
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _currentPageIndex == index
                                  ? Colors.white.withOpacity(0.8)
                                  : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            kheight10,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  SizedBox(
                    height: 20,
                    width: 20,
                    child: ColorFiltered(
                        colorFilter: const ColorFilter.mode(
                            Color.fromARGB(255, 41, 146, 231), BlendMode.srcIn),
                        child: Image.asset('assets/images/bookmark.png')),
                  ),
                  kwidth10,
                  const Text(
                    '1034',
                    style: TextStyle(color: kgreyColor, fontSize: 15),
                  ),
                  kwidth10,
                  SizedBox(
                    height: 20,
                    width: 20,
                    child: ColorFiltered(
                        colorFilter: const ColorFilter.mode(
                            Color.fromARGB(255, 41, 146, 231), BlendMode.srcIn),
                        child: Image.asset('assets/images/heart.png')),
                  ),
                  kwidth10,
                  const Text(
                    '1034',
                    style: TextStyle(color: kgreyColor, fontSize: 15),
                  ),
                  kwidth10,
                  Container(
                    height: 20,
                    width: 110,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 211, 209, 209),
                        borderRadius: BorderRadius.circular(20)),
                    child: const Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.star,
                            size: 15,
                            color: Color.fromARGB(255, 112, 191, 255),
                          ),
                          Icon(
                            Icons.star,
                            size: 15,
                            color: Color.fromARGB(255, 112, 191, 255),
                          ),
                          Icon(
                            Icons.star,
                            size: 15,
                            color: Color.fromARGB(255, 112, 191, 255),
                          ),
                          Icon(
                            Icons.star,
                            size: 15,
                            color: Color.fromARGB(255, 147, 205, 252),
                          ),
                          Icon(
                            Icons.star,
                            size: 15,
                            color: kwhiteColor,
                          )
                        ],
                      ),
                    ),
                  ),
                  kwidth10,
                  const Text(
                    '3.2',
                    style: TextStyle(color: Colors.blue, fontSize: 20),
                  )
                ],
              ),
            ),
            kheight10,
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Text(
                    'Actor Name',
                    style: TextStyle(
                        fontSize: 20,
                        color: loginColor,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Text(
                    'Indian Actress',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            kheight10,
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Icon(
                    Icons.schedule,
                    color: kgreyColor,
                  ),
                  kwidth10,
                  Text(
                    'Duration 20 Minutes',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            kheight10,
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Icon(
                    Icons.account_balance_wallet_outlined,
                    color: kgreyColor,
                  ),
                  kwidth10,
                  Text(
                    'Total Average Fees ₹9,999',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            kheight10,
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Text(
                    'About',
                    style: TextStyle(
                        fontSize: 20,
                        color: loginColor,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            kheight5,
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'From cardiovascular health to fitness, flexibility, balance, stress releif, better sleep, increased cognitive performance,and more, you can reap all these benefits in just one session out on the waves.So you may find yourself wondering what are the benefits of going on a surf camp.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.w400),
              ),
            ),
            kheight10,
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'See more',
                    style: TextStyle(fontSize: 18, color: lightBlue),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: const BottomNav(),
    );
  }
}
