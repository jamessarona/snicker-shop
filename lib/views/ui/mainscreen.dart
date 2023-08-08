import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:online_shop/controllers/mainscreen_provider.dart';
import 'package:online_shop/views/shared/bottom_nav_widget.dart';
import 'package:online_shop/views/ui/cartpage.dart';
import 'package:online_shop/views/ui/homespage.dart';
import 'package:online_shop/views/ui/profile.dart';
import 'package:online_shop/views/ui/searchpage.dart';
import 'package:provider/provider.dart';

import '../shared/bottom_nav.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  List<Widget> pageList = const [
    HomePage(),
    SearchPage(),
    HomePage(),
    CartPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
        builder: (context, mainScreenNotifier, child) {
      return Scaffold(
        backgroundColor: const Color(0xFFE2E2E2),
        body: pageList[mainScreenNotifier.pageIndex],
        bottomNavigationBar: const BottomNav(),
      );
    });
  }
}
