import 'package:flutter/material.dart';
import 'package:online_shop/providers/mainscreen_provider.dart';
import 'package:online_shop/views/shared/bottom_nav.dart';
import 'package:online_shop/views/ui/cartpage.dart';
import 'package:online_shop/views/ui/homepage.dart';
import 'package:online_shop/views/ui/profile.dart';
import 'package:online_shop/views/ui/userpage.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  List<Widget> pageList =  [
    const HomePage(),
   const UserPage(),
    const HomePage(),
    CartPage(),
    const ProfilePage(),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
      builder: (context, mainScreenNotifier, child) {
        return Center(
          child: Scaffold(
            backgroundColor: const Color(0xff1A2947),
        
            body: pageList[mainScreenNotifier.pageIndex],
            bottomNavigationBar: const BottoNavBar(),
          ),
        );
      },
    );
  }
}
