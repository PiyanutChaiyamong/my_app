import 'package:flutter/material.dart';
import 'package:nong_gmail/presentation/views/main/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            padding: EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfilePage()));
              },
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/Dog.jpg"),
              ),
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Welcome to the Home Page!'),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Image.asset(
                fit: BoxFit.cover,
                "assets/images/tik-tok.png",
              ),
            )
          ], // Closing bracket for Column children
        ),
      ),
    ); // Closing bracket for build method
  }
}
