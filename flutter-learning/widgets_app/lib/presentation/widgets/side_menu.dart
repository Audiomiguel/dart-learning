import 'package:flutter/material.dart';
import 'package:widgets_app/config/menu/menu_items.dart';
import 'package:go_router/go_router.dart';

class SideMenu extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const SideMenu({super.key, required this.scaffoldKey});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int navDrawerIndex = 0;

  @override
  Widget build(BuildContext context) {
    final hasNotch = MediaQuery.of(context).padding.top >= 35;
    return NavigationDrawer(
      selectedIndex: navDrawerIndex,
      onDestinationSelected: (value) {
        setState(() {
          navDrawerIndex = value;
        });

        final menuItem = appMenuItems[value];

        context.push(menuItem.link);
        widget.scaffoldKey.currentState?.openEndDrawer();
      },
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(28, hasNotch ? 0 : 8, 16, 10),
          child: Text('Hola'),
        ),
        ...appMenuItems.sublist(0, 3).map((item) => NavigationDrawerDestination(
            icon: Icon(item.icon), label: Text(item.title))),
        const Padding(
          padding: EdgeInsets.fromLTRB(28, 4, 16, 10),
          child: Divider(),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(28, 4, 16, 10),
          child: Text('Otras opciones'),
        ),
        ...appMenuItems.sublist(3).map((item) => NavigationDrawerDestination(
            icon: Icon(item.icon), label: Text(item.title))),
      ],
    );
  }
}
