import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:videovoiceandchat/pages/details.dart';
import 'package:videovoiceandchat/pages/home.dart';
import 'package:videovoiceandchat/pages/search.dart';
import 'package:videovoiceandchat/searchand_chat_icons.dart';

import 'my_icons.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedItem = 0;

  final List<Widget> pages = [
    const HomePage(),
    const SearchPage(),
    const DetailsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      extendBody: true,
      body: pages[_selectedItem],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.transparent),
                borderRadius: BorderRadius.circular(20)),
            child: GNav(
                duration: const Duration(milliseconds: 300),
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                tabBorderRadius: 15,
                tabMargin: const EdgeInsets.all(12),
                tabBackgroundColor: Theme.of(context).primaryColor,
                activeColor: Theme.of(context).indicatorColor,
                color: Theme.of(context).primaryColor.withOpacity(0.5),
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                textStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    // color: kColorScheme.background.withOpacity(0.8),
                    fontWeight: FontWeight.bold),
                selectedIndex: _selectedItem,
                onTabChange: (value) {
                  setState(() {
                    _selectedItem = value;
                  });
                },
                tabs: const [
                  GButton(
                    icon: MyIcons.home,
                    padding: EdgeInsets.all(8),
                    text: ' Home',
                  ),
                  GButton(
                    icon: SearchandChat.search,
                    padding: EdgeInsets.all(8),
                    text: ' Search',
                  ),
                  GButton(
                    icon: Icons.description_outlined,
                    padding: EdgeInsets.all(8),
                    text: ' Details',
                  ),
                  // GButton(
                  //   icon: Icons.phone,
                  //   padding: EdgeInsets.all(8),
                  //   text: ' Call',
                  // ),
                ]),
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   // shape: ShapeBorder.lerp(, , 0.5),
      //   onPressed: () {},
      //   backgroundColor: Colors.black,
      //   child: const Icon(
      //     Icons.add,
      //     color: Colors.white70,
      //   ),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    ));
  }
}
