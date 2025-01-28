import 'package:flutter/material.dart';

class FriendsPage extends StatelessWidget {
  const FriendsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          'Liste des Amis',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Ami 1: Max Bench Press 100 kg'),
            Text('Ami 2: Max Squat 120 kg'),
            Text('Ami 3: Max Deadlift 140 kg'),
          ],
        ),
      ),
    );
  }
}
