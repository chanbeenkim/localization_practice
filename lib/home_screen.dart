import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Localization"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "안녕하세요",
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.blue,
            child: TextButton(
              onPressed: () {},
              child: const Text(
                "Click",
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
