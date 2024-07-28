import 'package:flutter/material.dart';
import 'package:nong_gmail/presentation/views/main/profile_page.dart';
import 'package:nong_gmail/presentation/widgets/bottom_nav.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _currentIndex = 0;

  List<Widget> get _children => [
        Center(
          child: Text("หน้าแรก"),
        ),
        Center(
          child: Text("ถูกใจ"),
        ),
        Center(
          child: Text("แชท"),
        ),
        Center(
          child: Text("ตั้งค่า"),
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8),
            child: Image.asset(
              fit: BoxFit.cover,
              "assets/images/tik-tok.png",
              height: 5,
            ),
          ),
          title: const Text('หน้าแรก'),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfilePage()));
                },
                child: const CircleAvatar(
                  backgroundImage: AssetImage("assets/images/Dog.jpg"),
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNav(
          onTap: onTabTapped,
          currentIndex: _currentIndex,
        ),
        body: _children[_currentIndex]); // Closing bracket for build method
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
