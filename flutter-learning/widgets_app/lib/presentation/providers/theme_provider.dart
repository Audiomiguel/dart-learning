import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final darkModeProvider = StateProvider((ref) => false);

final colorListProvider = StateProvider((ref) => colorList);

final selectedColorProvider = StateProvider((ref) => 1);

// Un objeto de tipo AppTheme (custom)

final themeNotifierProvider =
    StateNotifierProvider<ThemeNotifier, AppTheme>((ref) => ThemeNotifier());

// Controller o Notifier
class ThemeNotifier extends StateNotifier<AppTheme> {
  // STATE = Estado => new AppTheme();
  ThemeNotifier() : super(AppTheme());
  void toggleDarkmode() {
    state = state.copyWith(isDarkMode: !state.isDarkmode);
  }

  void changeColorIndex(int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
  }
}
