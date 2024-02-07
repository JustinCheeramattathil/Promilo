import 'package:flutter/material.dart';
import 'package:promilo/application/home_card_provider.dart';
import 'package:promilo/core/constants/constants.dart';
import 'package:promilo/presentation/utils/colors.dart';
import 'package:promilo/presentation/widgets/custom_searchfield.dart';
import 'package:promilo/presentation/widgets/home_card.dart';
import 'package:promilo/presentation/widgets/trending_card.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentPageIndex = 0;

  List<String> image = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUik8Wi1v-G8KQmfD1zFOhAhCwYmzqHnNfcA',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxNMMHFGiU12vc2TpepxG0Y0B1jg-C1W5j_A',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSENRLm0DKvLNymV-zXji38iV2V8a3G4WUDmA',
  ];
  List<String> images = [
    'assets/images/Feather_pen_icon-removebg-preview.png',
    'assets/images/movie1-removebg-preview.png',
    'assets/images/book-removebg-preview.png',
  ];
  List<String> text = [
    'Author',
    'Movies',
    'Books',
  ];
  List<String> text1 = [
    '1028',
    '1523',
    '732',
  ];

  @override
  Widget build(BuildContext context) {
    final homeProvider = Provider.of<HomeProvider>(context);
    return Scaffold(
      backgroundColor: kwhiteColor,
      appBar: AppBar(
        backgroundColor: kwhiteColor,
        automaticallyImplyLeading: false,
        leading: const Icon(Icons.arrow_back_ios),
        title: const Text(
          'Individual Meetup',
          style: TextStyle(fontSize: 30, color: loginColor),
        ),
        shadowColor: Colors.black,
        elevation: 2,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            kheight20,
            const CustomSearchField(),
            kheight5,
            SizedBox(
              height: 200,
              width: double.infinity,
              child: PageView.builder(
                onPageChanged: (index) {
                  setState(() {
                    _currentPageIndex = index;
                  });
                },
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Center(
                    child: HomeCard(
                      imageUrl: image[index],
                    ),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
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
                          ? loginColor
                          : const Color.fromARGB(255, 105, 105, 105),
                    ),
                  ),
                ),
              ),
            ),
            kheight20,
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    'Trending Popular People',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: loginColor),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 200,
              width: double.infinity,
              child: Center(
                  child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) => Center(
                  child: TrendingCard(
                    text1: text1[index],
                    text: text[index],
                    image: images[index],
                  ),
                ),
              )),
            )
          ],
        ),
      ),
    );
  }
}
