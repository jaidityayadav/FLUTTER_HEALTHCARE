import 'package:flutter/material.dart';
import 'package:medicare/consts/colors.dart';
import 'package:medicare/views/category_view/category_view.dart';
import 'package:medicare/views/home_view/home_view.dart';
import 'package:medicare/views/login_view/login_view.dart';
import 'package:medicare/views/settings_view/settings_view.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int selectedIndex=0;
  List screenList = [
    const HomeView(),
    const CategoryView(),
    const LoginView(),
    const SettingsView(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.white.withOpacity(0.5),
        selectedLabelStyle: TextStyle(
          color: AppColors.whiteColor,
        ),
        selectedIconTheme: IconThemeData(
          color: AppColors.whiteColor,
        ),
        selectedItemColor: AppColors.whiteColor,

        backgroundColor: AppColors.blueColor,
        type: BottomNavigationBarType.fixed,
        
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex=value;
          });
        },
        items:const [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.category),label: "Category"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: "Doctor"),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings"),
      ],),
    );
  }
}