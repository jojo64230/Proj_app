import 'package:flutter/material.dart';
import 'perf.exo/benchpress_page.dart';
import 'perf.exo/squat_page.dart';

class PerformancePage extends StatelessWidget {
  const PerformancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          'Performances',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Bench Press: 100 kg',
              style: TextStyle(fontSize: 18),
            ),
            const Text(
              'Squat: 120 kg',
              style: TextStyle(fontSize: 18),
            ),
            const Text(
              'Deadlift: 140 kg',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const BenchpressPage()),
                );
              },
              child: const Text('Bench Press'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SquatPage()),
                );
              },
              child: const Text('Squat'),
            ),
          ],
        ),
      ),
    );
  }
}

