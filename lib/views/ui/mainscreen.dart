import 'package:flutter/material.dart';
import 'package:online_shop/views/ui/searchpage.dart';
import 'package:provider/provider.dart';
import '../../controllers/mainscreen_provider.dart';
import '../shared/bottom_nav.dart';
import 'cartpage.dart';
import 'homespage.dart';
import 'profile.dart';

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
