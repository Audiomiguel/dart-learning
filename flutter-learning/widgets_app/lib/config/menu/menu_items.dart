import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subtitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
      icon: Icons.smart_button_outlined,
      title: 'Botones',
      subtitle: 'Varios botones en Flutter',
      link: '/buttons'),
  MenuItem(
      icon: Icons.credit_card,
      title: 'Tarjetas',
      subtitle: 'Un contenedor estilizado',
      link: '/cards'),
  MenuItem(
      title: 'Progress Indicator',
      subtitle: 'Generales y controlados',
      link: '/progress',
      icon: Icons.refresh_rounded),
  MenuItem(
      title: 'Snackbars y diálogos',
      subtitle: 'Indicadores en pantalla',
      link: '/snackbars',
      icon: Icons.info_outline),
  MenuItem(
      title: 'Animated Container',
      subtitle: 'Stateful Widget Animado',
      link: '/animated',
      icon: Icons.animation),
  MenuItem(
      title: 'UI Controls',
      subtitle: 'Una serie de controles en Flutter',
      link: '/ui-controls',
      icon: Icons.control_point_sharp),
  MenuItem(
      title: 'Tutorial',
      subtitle: 'Introduccion a la aplicacion',
      link: '/tutorial',
      icon: Icons.help),
  MenuItem(
      title: 'Infinite Scroll',
      subtitle: 'Infinite Listsand pull to refresh',
      link: '/infinite-scroll',
      icon: Icons.screen_rotation_alt_outlined),
  MenuItem(
      title: 'Counter Riverpod',
      subtitle: 'Contador con el gestor de estado RiverPod',
      link: '/counter',
      icon: Icons.countertops),
  MenuItem(
      title: 'Theme Changer Riverpod',
      subtitle: 'Contador con el gestor de estado RiverPod',
      link: '/theme-changer',
      icon: Icons.change_circle),
];
