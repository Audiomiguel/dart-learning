import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final darkModeProvider = StateProvider((ref) => false);

final colorListProvider = StateProvider((ref) => colorList);

final selectedColorProvider = StateProvider((ref) => 1);
