import 'package:flutter/material.dart';
import 'pages/tela_home.dart';

void main() {
  runApp(const MeuAppDeIcones());
}

class MeuAppDeIcones extends StatelessWidget {
  const MeuAppDeIcones({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meu App de Ícones',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
        ),
      ),
      home: const TelaHome(),
    );
  }
}