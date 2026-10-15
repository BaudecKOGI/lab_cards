import 'package:flutter/material.dart';

class CustomCard2 extends StatelessWidget {
  const CustomCard2({super.key});

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).colorScheme.primary;

    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const ListTile(
              leading: Icon(
                Icons.minor_crash_outlined,
                color: Colors.grey,
                size: 35,
              ),
              title: Text(
                'Título de la tarjeta',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Este es un texto de ejemplo para poder mostrar una mejor disposición del texto en una tarjeta',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(foregroundColor: primaryColor),
                  child: const Text('Procesar'),
                ),
                const SizedBox(width: 15),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(foregroundColor: primaryColor),
                  child: const Text('Cancelar'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}