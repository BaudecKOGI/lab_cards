import 'package:flutter/material.dart';

class CustomCard3 extends StatelessWidget {
  const CustomCard3({super.key});

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
            ListTile(
              leading: Icon(
                Icons.car_crash_rounded,
                color: primaryColor,
                size: 35,
              ),
              title: const Text(
                'Título de la tarjeta',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text(
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