import 'package:al_hadith_clone/widgets/option_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: Column(
        children: [
          Text("All Hadith Books", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),

          ListView.builder(
            shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) {
            return OptionCard();
          }),
        ],
      ),
    );
  }
}
