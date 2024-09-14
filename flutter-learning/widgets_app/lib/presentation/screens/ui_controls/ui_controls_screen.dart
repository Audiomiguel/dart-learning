import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_controls_screen';
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls'),
      ),
      body: _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;

  bool wantsBreakfast = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
            title: const Text('Developer Mode'),
            subtitle: const Text('Controles adicionales'),
            value: isDeveloper,
            onChanged: (value) {
              isDeveloper = value;
              setState(() {});
            }),
        ExpansionTile(
          title: const Text(
            'Vehiculo de transporte',
          ),
          subtitle: Text('$selectedTransportation'),
          children: [
            RadioListTile(
                title: const Text('Car'),
                value: Transportation.car,
                groupValue: selectedTransportation,
                onChanged: (value) {
                  selectedTransportation = Transportation.car;
                  setState(() {});
                }),
            RadioListTile(
                title: const Text('Plane'),
                value: Transportation.plane,
                groupValue: selectedTransportation,
                onChanged: (value) {
                  selectedTransportation = Transportation.plane;
                  setState(() {});
                }),
            RadioListTile(
                title: const Text('Boat'),
                value: Transportation.boat,
                groupValue: selectedTransportation,
                onChanged: (value) {
                  selectedTransportation = Transportation.boat;
                  setState(() {});
                }),
            RadioListTile(
                title: const Text('Submarine'),
                value: Transportation.submarine,
                groupValue: selectedTransportation,
                onChanged: (value) {
                  selectedTransportation = Transportation.submarine;
                  setState(() {});
                }),
          ],
        ),
        CheckboxListTile(
          value: wantsBreakfast,
          onChanged: (value) {
            wantsBreakfast = !wantsBreakfast;
            setState(() {});
          },
          title: const Text('Incluir desayuno'),
        ),
        CheckboxListTile(
          value: wantsBreakfast,
          onChanged: (value) {
            wantsBreakfast = !wantsBreakfast;
            setState(() {});
          },
          title: const Text('Incluir desayuno'),
        ),
        CheckboxListTile(
          value: wantsBreakfast,
          onChanged: (value) {
            wantsBreakfast = !wantsBreakfast;
            setState(() {});
          },
          title: const Text('Incluir desayuno'),
        ),
      ],
    );
  }
}
