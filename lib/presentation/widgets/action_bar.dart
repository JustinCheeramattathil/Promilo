import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';

class ActionBar extends StatelessWidget {
  const ActionBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 25,
              width: 25,
              child: ColorFiltered(
                  colorFilter: const ColorFilter.mode(
                      Color.fromARGB(255, 104, 103, 103), BlendMode.srcIn),
                  child: Image.asset('assets/images/download.png')),
            ),
            SizedBox(
              height: 25,
              width: 25,
              child: ColorFiltered(
                  colorFilter: const ColorFilter.mode(
                      Color.fromARGB(255, 104, 103, 103), BlendMode.srcIn),
                  child: Image.asset('assets/images/bookmark.png')),
            ),
            SizedBox(
              height: 25,
              width: 25,
              child: ColorFiltered(
                  colorFilter: const ColorFilter.mode(
                      Color.fromARGB(255, 104, 103, 103), BlendMode.srcIn),
                  child: Image.asset('assets/images/heart.png')),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SizedBox(
                height: 30,
                width: 30,
                child: ColorFiltered(
                    colorFilter: const ColorFilter.mode(
                        Color.fromARGB(255, 0, 0, 0), BlendMode.srcIn),
                    child: Image.asset('assets/images/scanner.png')),
              ),
            ),
            SizedBox(
              height: 25,
              width: 25,
              child: ColorFiltered(
                  colorFilter: const ColorFilter.mode(
                      Color.fromARGB(255, 0, 0, 0), BlendMode.srcIn),
                  child: Image.asset('assets/images/star.png')),
            ),
            InkWell(
              onTap: () {
                FlutterShare.share(
                    title: 'Promilo',
                    text: '',
                    linkUrl: 'sdfjdsjfhdsfhsfjsfgsh');
              },
              child: SizedBox(
                height: 25,
                width: 25,
                child: ColorFiltered(
                    colorFilter: const ColorFilter.mode(
                        Color.fromARGB(255, 0, 0, 0), BlendMode.srcIn),
                    child: Image.asset('assets/images/shareicon.png')),
              ),
            )
          ],
        ),
      ),
    );
  }
}
