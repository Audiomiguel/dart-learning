import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/animated/animated_screen.dart';
import 'package:widgets_app/presentation/screens/buttons/buttons_screen.dart';
import 'package:widgets_app/presentation/screens/cards/cards_screen.dart';
import 'package:widgets_app/presentation/screens/counter/counter_screen.dart';
import 'package:widgets_app/presentation/screens/home/home_screen.dart';
import 'package:widgets_app/presentation/screens/progress/progress_screen.dart';
import 'package:widgets_app/presentation/screens/screens.dart';
import 'package:widgets_app/presentation/screens/snackbar/snackbar_screen.dart';
import 'package:widgets_app/presentation/screens/theme-changer/theme_changer_screen.dart';

final appRouter = GoRouter(routes: [
  GoRoute(
      name: HomeScreen.name,
      path: '/',
      builder: (context, state) => const HomeScreen()),
  GoRoute(
      name: ButtonsScreen.name,
      path: '/buttons',
      builder: (context, state) => const ButtonsScreen()),
  GoRoute(
      name: CardScreen.name,
      path: '/cards',
      builder: (context, state) => const CardScreen()),
  GoRoute(
      name: ProgressScreen.name,
      builder: (context, state) => const ProgressScreen(),
      path: '/progress'),
  GoRoute(
      name: SnackbarScreen.name,
      builder: (context, state) => const SnackbarScreen(),
      path: '/snackbars'),
  GoRoute(
      name: AnimatedScreen.name,
      builder: (context, state) => const AnimatedScreen(),
      path: '/animated'),
  GoRoute(
      name: UiControlsScreen.name,
      builder: (context, state) => const UiControlsScreen(),
      path: '/ui-controls'),
  GoRoute(
      name: AppTutorialScreen.name,
      builder: (context, state) => AppTutorialScreen(),
      path: '/tutorial'),
  GoRoute(
      name: InfiniteScrollScreen.name,
      builder: (context, state) => InfiniteScrollScreen(),
      path: '/infinite-scroll'),
  GoRoute(
      name: CounterScreen.name,
      path: '/counter',
      builder: (context, state) => const CounterScreen()),
  GoRoute(
      path: '/theme-changer',
      name: 'theme-changer',
      builder: (context, state) => const ThemeChangerScreen()),
]);
