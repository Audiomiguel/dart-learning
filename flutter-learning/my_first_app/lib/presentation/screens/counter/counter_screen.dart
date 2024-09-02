import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.plus_one),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '10',
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.w100),
            ),
            Text('Clicks',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }
}
