import 'package:flutter/material.dart';

class TelaPerfil extends StatelessWidget {
  const TelaPerfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meu Perfil'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Center(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.blue,
                child: Text(
                  'ET',
                  style: TextStyle(fontSize: 32, color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Eduarda Torres',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text(
              'eduardatorresfernandes@email.com',
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            const SizedBox(height: 32),
            Card(
              elevation: 2,
              child: Column(
                children: const [
                  ListTile(
                    leading: Icon(Icons.phone, color: Colors.blue),
                    title: Text('Telefone'),
                    subtitle: Text('(31) 99999-9999'),
                  ),
                  Divider(height: 1),
                  ListTile(
                    leading: Icon(Icons.location_on, color: Colors.blue),
                    title: Text('Localização'),
                    subtitle: Text('Belo Horizonte - MG'),
                  ),
                  Divider(height: 1),
                  ListTile(
                    leading: Icon(Icons.work, color: Colors.blue),
                    title: Text('Cargo / Função'),
                    subtitle: Text('Estudande COTEMIG'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}