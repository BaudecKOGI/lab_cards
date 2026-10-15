import 'package:flutter/material.dart';

class CustomCard1 extends StatelessWidget {
  const CustomCard1({super.key});

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
                Icons.directions_car_outlined,
                color: Colors.grey,
                size: 35,
              ),
              title: Text(
                'Título de la tarjeta',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Este es un subtitulo de la tarjeta creada, para poder probarla en Flutter',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(foregroundColor: primaryColor),
                  child: const Text('Procesar'),
                ),
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