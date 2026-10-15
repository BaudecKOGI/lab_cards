import 'package:flutter/material.dart';
import 'package:lab_cards/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

// ValueNotifier para controlar el modo oscuro/claro fácilmente para las capturas
final ValueNotifier<ThemeMode> themeNotifier = ValueNotifier(ThemeMode.light);
// ValueNotifier para cambiar el color principal (Rojo por defecto como en la guía)
final ValueNotifier<Color> colorNotifier = ValueNotifier(Colors.red);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeNotifier,
      builder: (_, currentMode, __) {
        return ValueListenableBuilder<Color>(
          valueListenable: colorNotifier,
          builder: (_, currentColor, __) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Lab Cards App',
              themeMode: currentMode,
              // Tema Claro
              theme: ThemeData(
                useMaterial3: true,
                colorSchemeSeed: currentColor,
                brightness: Brightness.light,
                appBarTheme: AppBarTheme(
                  backgroundColor: currentColor,
                  foregroundColor: Colors.white,
                  centerTitle: true,
                ),
              ),
              // Tema Oscuro (Dark Mode)
              darkTheme: ThemeData(
                useMaterial3: true,
                colorSchemeSeed: currentColor,
                brightness: Brightness.dark,
                appBarTheme: const AppBarTheme(
                  centerTitle: true,
                ),
              ),
              home: const HomeScreen(),
            );
          },
        );
      },
    );
  }
}