import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Functions'),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
              icon: const Icon(Icons.refresh_rounded)),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomCounterButton(
            icon: Icons.plus_one,
            onPressed: () {
              clickCounter++;
              setState(() {});
            },
          ),
          const SizedBox(height: 10),
          CustomCounterButton(
            icon: Icons.refresh_outlined,
            onPressed: () {
              clickCounter = 0;
              setState(() {});
            },
          ),
          const SizedBox(height: 10),
          CustomCounterButton(
            icon: Icons.exposure_minus_1_outlined,
            onPressed: () {
              if (clickCounter == 0) return;

              clickCounter--;
              setState(() {});
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter',
              style: const TextStyle(fontSize: 48, fontWeight: FontWeight.w100),
            ),
            Text(clickCounter == 0 ? 'Click' : 'Clicks',
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }
}

class CustomCounterButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomCounterButton({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      enableFeedback: true,
      elevation: 5,
      backgroundColor: Colors.indigo[100],
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
