import 'package:blank_project/design/ui_colors.dart';
import 'package:blank_project/pages/home_pages/home_page_1.dart';
import 'package:blank_project/pages/home_pages/home_page_2.dart';
import 'package:blank_project/pages/home_pages/home_page_3.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavBar extends StatelessWidget {
  final int index;

  const BottomNavBar({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: UIColors.bottomNavbarColor,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // needed for alignment
          Container(height: 0.5, color: UIColors.whiteO60),
          const SizedBox(height: 4),
          BottomNavigationBar(
              currentIndex: index,
              onTap: (newIndex) {
                context.pop();
                context.push(routes[newIndex]);
              },
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon((index == 0) ? Icons.home : Icons.home_outlined),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon((index == 1)
                      ? Icons.library_books_rounded
                      : Icons.library_books_outlined),
                  label: 'Content',
                ),
                BottomNavigationBarItem(
                  icon: Icon((index == 2)
                      ? Icons.person
                      : Icons.person_outline_rounded),
                  label: 'Profile',
                ),
              ]),
          const SizedBox(height: 4),
          SizedBox(height: MediaQuery.of(context).padding.bottom),
        ],
      ),
    );
  }
}

final List<String> routes = [HomePage1.route, HomePage2.route, HomePage3.route];
