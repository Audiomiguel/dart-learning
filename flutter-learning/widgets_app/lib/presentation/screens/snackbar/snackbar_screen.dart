import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';
  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    var snackBack = SnackBar(
        content: const Text('Hola mundo'),
        duration: const Duration(seconds: 2),
        action: SnackBarAction(
          label: 'Ok',
          onPressed: () {},
        ));
    ScaffoldMessenger.of(context).showSnackBar(snackBack);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: const Text('Estas seguro?'),
          content: const Text('Esto es una alerta'),
          actions: [
            TextButton(
              onPressed: () => context.pop(),
              child: Text('Cancelar'),
            ),
            FilledButton(
                onPressed: () => context.pop(), child: const Text('Aceptar'))
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y diálogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
                onPressed: () {
                  showAboutDialog(context: context, children: [
                    const Text(
                        'Observa las licencias de la aplicación de Flutter')
                  ]);
                },
                child: const Text('Licencias usadas')),
            FilledButton.tonal(
                onPressed: () {
                  openDialog(context);
                },
                child: const Text('Mostrar dialogos de pantalla'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.remove_red_eye_outlined),
        label: const Text('Ver Snackbar'),
        onPressed: () {
          showCustomSnackbar(context);
        },
      ),
    );
  }
}
