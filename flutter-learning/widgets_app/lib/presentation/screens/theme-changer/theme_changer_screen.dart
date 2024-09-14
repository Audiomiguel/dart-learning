import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class ThemeChangerScreen extends ConsumerWidget {
  static const name = 'theme_changer_screen';
  const ThemeChangerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkmode = ref.watch(darkModeProvider);
    final IconMode = isDarkmode ? Icons.light_mode : Icons.dark_mode;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Changer Screen'),
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
      body: _ThemeChangerView(),
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = ref.watch(colorListProvider);
    final selectedIndexColor = ref.watch(selectedColorProvider);

    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (BuildContext context, int index) {
        final color = colors[index];
        return RadioListTile(
            title: Text('Este color', style: TextStyle(color: color)),
            subtitle: Text('Color ${color.value}'),
            value: color,
            activeColor: color,
            groupValue: colors[selectedIndexColor],
            onChanged: (_) {
              ref.read(selectedColorProvider.notifier).state = index;
            });
      },
    );
  }
}
