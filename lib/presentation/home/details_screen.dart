// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:promilo/application/home_card_provider.dart';
import 'package:promilo/core/constants/constants.dart';
import 'package:promilo/presentation/utils/colors.dart';
import 'package:provider/provider.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int _currentPageIndex = 0;

  List<String> image = [
    'assets/images/surf.jpg',
    'assets/images/surf2.jpg',
    'assets/images/surf3.jpg',
    'assets/images/surf4.jpg',
    'assets/images/surf5.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final homeProvider = Provider.of<HomeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kwhiteColor,
        automaticallyImplyLeading: false,
        leading: const Icon(
          Icons.arrow_back_ios,
          size: 20,
        ),
        title: const Text(
          'Description',
          style: TextStyle(
              fontSize: 25, color: loginColor, fontWeight: FontWeight.w500),
        ),
        shadowColor: Colors.black,
        elevation: 2,
      ),
      body: Column(
        children: [
          kheight10,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Stack(
              children: [
                Container(
                  height: 380,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.7),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
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
                      )
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
          )
        ],
      ),
    );
  }
}
