import 'package:flutter/material.dart';
import 'package:uber/tabScreens/EarningTabPage.dart';
import 'package:uber/tabScreens/HomeTabPage.dart';
import 'package:uber/tabScreens/ProfileTabPage.dart';
import 'package:uber/tabScreens/RatingTabPage.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  int selected = 0;
  TabController? tabController;
  onItemClicked(int index) {
    setState(() {
      selected = index;
      tabController!.index = index;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text("Welcome to the Rider App")),
      body: TabBarView(
        controller: tabController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          HomeTabPage(),
          EarningTabPage(),
          RatingTabPage(),
          ProfileTabPage()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.credit_card), label: "Earning"),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: "Rating"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        currentIndex: selected,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        onTap: onItemClicked,
        selectedLabelStyle: const TextStyle(fontSize: 14),
        showUnselectedLabels: true,
      ),
    );
  }
}
