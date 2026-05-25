import 'package:flutter/material.dart';

class TelaMensagens extends StatelessWidget {
  const TelaMensagens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat de Mensagens'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        children: [
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text('ME', style: TextStyle(color: Colors.white)),
            ),
            title: const Text('Maria Eduarda Camara'),
            subtitle: const Text('Oie! Conseguiu finalizar a atividade de framework?'),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('14:32', style: TextStyle(fontSize: 12, color: Colors.grey)),
                const SizedBox(height: 4),
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: const BoxDecoration(color: Colors.teal, shape: BoxShape.circle),
                  child: const Text('1', style: TextStyle(color: Colors.white, fontSize: 10)),
                ),
              ],
            ),
          ),
          const Divider(indent: 70),
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.orange,
              child: Text('IL', style: TextStyle(color: Colors.white)),
            ),
            title: const Text('Igor Lucas'),
            subtitle: const Text('Sua atividade ficou ótima, parabéns.'),
            trailing: const Text('Ontem', style: TextStyle(fontSize: 12, color: Colors.grey)),
          ),
        ],
      ),
    );
  }
}