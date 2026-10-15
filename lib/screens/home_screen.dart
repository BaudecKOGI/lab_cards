import 'package:flutter/material.dart';
import 'package:lab_cards/main.dart';
import 'package:lab_cards/screens/card_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CardScreen(),
                    ),
                  );
                },
                icon: const Icon(Icons.credit_card),
                label: const Text('Ir a Card Screen'),
              ),
              const SizedBox(height: 40),
              const Divider(),
              const SizedBox(height: 10),
              const Text(
                'Controles de Tema (Para Capturas)',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(height: 15),
              ElevatedButton.icon(
                onPressed: () {
                  themeNotifier.value = themeNotifier.value == ThemeMode.light
                      ? ThemeMode.dark
                      : ThemeMode.light;
                },
                icon: const Icon(Icons.brightness_6),
                label: const Text('Alternar Modo Claro / Oscuro'),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () => colorNotifier.value = Colors.red,
                    child: const Text('Tema Rojo'),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () => colorNotifier.value = Colors.blue,
                    child: const Text('Tema Azul'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}