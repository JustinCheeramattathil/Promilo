import 'package:flutter/material.dart';
import 'package:promilo/application/bottom_nav_provider.dart';
import 'package:provider/provider.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showUnselectedLabels: true,
      unselectedItemColor: const Color.fromARGB(255, 9, 0, 26),
      selectedItemColor: const Color.fromARGB(255, 1, 255, 255),
      currentIndex: Provider.of<BottomNavBarProvider>(context).selectedIndex,
      onTap: (int index) {
        Provider.of<BottomNavBarProvider>(context, listen: false)
            .updateSelectedIndex(index);
      },
      items: [
        BottomNavigationBarItem(
          icon: SizedBox(
            height: 25,
            width: 25,
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                Provider.of<BottomNavBarProvider>(context).selectedIndex == 0
                    ? const Color.fromARGB(255, 1, 255, 255)
                    : const Color.fromARGB(255, 9, 0, 26),
                BlendMode.srcIn,
              ),
              child: Image.asset('assets/images/home.png'),
            ),
          ),
          label: 'home',
        ),
        BottomNavigationBarItem(
          icon: SizedBox(
            height: 25,
            width: 25,
            child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  Provider.of<BottomNavBarProvider>(context).selectedIndex == 1
                      ? const Color.fromARGB(255, 1, 255, 255)
                      : const Color.fromARGB(255, 9, 0, 26),
                  BlendMode.srcIn,
                ),
                child: Image.asset('assets/images/prolet1.png')),
          ),
          label: 'prolet',
        ),
        BottomNavigationBarItem(
          icon: SizedBox(
            height: 25,
            width: 25,
            child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  Provider.of<BottomNavBarProvider>(context).selectedIndex == 2
                      ? const Color.fromARGB(255, 1, 255, 255)
                      : const Color.fromARGB(255, 9, 0, 26),
                  BlendMode.srcIn,
                ),
                child: Image.asset('assets/images/meetup.png')),
          ),
          label: 'meetup',
        ),
        BottomNavigationBarItem(
          icon: SizedBox(
            height: 25,
            width: 25,
            child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  Provider.of<BottomNavBarProvider>(context).selectedIndex == 3
                      ? const Color.fromARGB(255, 1, 255, 255)
                      : const Color.fromARGB(255, 9, 0, 26),
                  BlendMode.srcIn,
                ),
                child: Image.asset('assets/images/folder.png')),
          ),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: SizedBox(
            height: 25,
            width: 25,
            child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  Provider.of<BottomNavBarProvider>(context).selectedIndex == 4
                      ? const Color.fromARGB(255, 1, 255, 255)
                      : const Color.fromARGB(255, 9, 0, 26),
                  BlendMode.srcIn,
                ),
                child: Image.asset('assets/images/account.png')),
          ),
          label: 'Account',
        ),
      ],
    );
  }
}
