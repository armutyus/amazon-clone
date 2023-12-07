import 'package:amazon_clone_project/constants/global_variables.dart';
import 'package:amazon_clone_project/features/account/screens/account_screen.dart';
import 'package:amazon_clone_project/features/home/screens/home_screen.dart';
import 'package:amazon_clone_project/models/bottom_bar_item.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  static const String routeName = '/actual-home';
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _page = 0;
  double bottomBarWidth = 42;
  double bottomBarBorderWidth = 5;

  List<BottomBarItem> bottomNavItems = [
    BottomBarItem(
      title: "Home",
      icon: const Icon(Icons.home_outlined),
    ),
    BottomBarItem(
      title: "Account",
      icon: const Icon(Icons.person_outline_outlined),
    ),
    BottomBarItem(
        title: "Cart",
        icon: const Icon(Icons.shopping_cart_outlined),
        hasBadge: true),
  ];

  List<Widget> pages = [
    const HomeScreen(),
    const AccountScreen(),
    const Center(
      child: Text("Cart"),
    ), //CartScreen(),
  ];

  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }

  Widget setPageIcon(bool hasBadge, int index) {
    return bottomNavItems[index].hasBadge == false
        ? bottomNavItems[index].icon
        : badges.Badge(
            badgeContent: const Text("4"),
            badgeStyle: const badges.BadgeStyle(
              badgeColor: Colors.white,
              borderSide: BorderSide(color: GlobalVariables.unselectedNavBarColor),
              elevation: 0,
            ),
            child: bottomNavItems[index].icon,
          );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_page],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _page,
        selectedItemColor: GlobalVariables.selectedNavBarColor,
        unselectedItemColor: GlobalVariables.unselectedNavBarColor,
        backgroundColor: GlobalVariables.backgroundColor,
        iconSize: 28,
        onTap: (index) => updatePage(index),
        items: List.generate(
            bottomNavItems.length,
            (index) => BottomNavigationBarItem(
                  icon: Container(
                      width: bottomBarWidth,
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(
                            color: _page == index
                                ? GlobalVariables.selectedNavBarColor
                                : GlobalVariables.backgroundColor,
                            width: bottomBarBorderWidth,
                          ),
                        ),
                      ),
                      child: setPageIcon(bottomNavItems[index].hasBadge, index)),
                  label: "",
                )),
      ),
    );
  }
}
