import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/counter_provider.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class CounterScreen extends ConsumerWidget {
  static const name = 'counter-screen';
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final clickCounter = ref.watch(counterProvider);
    final isDarkModeProvider = ref.watch(darkModeProvider);

    final IconMode = isDarkModeProvider ? Icons.light_mode : Icons.dark_mode;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        actions: [
          IconButton(
              onPressed: () {
                ref.read(darkModeProvider.notifier).update((value) => !value);
              },
              icon: Icon(
                IconMode,
                size: 34,
              ))
        ],
      ),
      body: Center(
        child: Text('Counter: $clickCounter',
            style: Theme.of(context).textTheme.titleLarge),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterProvider.notifier).update((value) => value + 1);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
