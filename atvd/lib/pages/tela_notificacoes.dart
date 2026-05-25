import 'package:flutter/material.dart';

class TelaNotificacoes extends StatelessWidget {
  const TelaNotificacoes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alertas e Notificações'),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: [
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.purple,
              child: Icon(Icons.security, color: Colors.purple),
            ),
            title: const Text('Nova tentativa de login'),
            subtitle: const Text('Dispositivo desconhecido detectado.'),
            trailing: const Text('10min ago'),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.purple,
              child: Icon(Icons.update, color: Colors.purple),
            ),
            title: const Text('Atualização de Sistema'),
            subtitle: const Text('Uma nova versão está pronta para instalar.'),
            trailing: const Text('2h ago'),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.purple,
              child: Icon(Icons.discount, color: Colors.purple),
            ),
            title: const Text('Cupom Exclusivo!'),
            subtitle: const Text('Ganhe 15% de desconto usando o app hoje.'),
            trailing: const Text('Ontem'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}