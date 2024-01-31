import 'package:flutter/material.dart';

class OptionCard extends StatelessWidget {
  const OptionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(12),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        child: ListTile(
          leading: CircleAvatar(
            radius: 20,
            child: Text("B", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
          ),
          title: Text("Sahih Bukhari", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          subtitle: Text("Imam Bukhari", style: TextStyle(fontSize: 12)),
          trailing: Column(
            children: [
              Text("3434", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              const SizedBox(height: 3),
              Text("Hadith", style: TextStyle(fontSize: 12)),
            ],
          ),
        ),
      ),
    );
  }
}
