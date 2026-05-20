import 'package:flutter/material.dart';
import '../widgets/card_icone.dart';

class TelaHome extends StatefulWidget {
  const TelaHome({super.key});

  @override
  State<TelaHome> createState() => _TelaHomeState();
}

class _TelaHomeState extends State<TelaHome> {
  String _mensagemInformativa = 'Nenhum card foi clicado ainda.';

  void _atualizarMensagem(String nomeCard) {
    setState(() {
      _mensagemInformativa = 'Você clicou em: $nomeCard';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App de Ícones da Eduarda Torres'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16.0),
            color: Theme.of(context).colorScheme.primaryContainer,
            child: Text(
              _mensagemInformativa,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(12.0),
              children: [
                CardIcone(
                  icone: Icons.person,
                  titulo: 'Perfil',
                  descricao: 'Gerencie suas informações pessoais e dados da conta.',
                  textoBotao: 'Ver Perfil',
                  cor: Colors.blue,
                  aoClicar: () => _atualizarMensagem('Perfil'),
                ),
                CardIcone(
                  icone: Icons.settings,
                  titulo: 'Configurações',
                  descricao: 'Ajuste as preferências do aplicativo e notificações.',
                  textoBotao: 'Abrir Ajustes',
                  cor: Colors.orange,
                  aoClicar: () => _atualizarMensagem('Configurações'),
                ),
                CardIcone(
                  icone: Icons.favorite,
                  titulo: 'Favoritos',
                  descricao: 'Acesse seus itens e conteúdos salvos preferidos.',
                  textoBotao: 'Meus Favoritos',
                  cor: Colors.red,
                  aoClicar: () => _atualizarMensagem('Favoritos'),
                ),
                CardIcone(
                  icone: Icons.notifications,
                  titulo: 'Notificações',
                  descricao: 'Fique por dentro das últimas novidades e alertas.',
                  textoBotao: 'Ver Alertas',
                  cor: Colors.purple,
                  aoClicar: () => _atualizarMensagem('Notificações'),
                ),
                CardIcone(
                  icone: Icons.message,
                  titulo: 'Mensagens',
                  descricao: 'Verifique suas conversas e notificações de chat mais recentes.',
                  textoBotao: 'Abrir Chat',
                  cor: Colors.teal,
                  aoClicar: () => _atualizarMensagem('Mensagens'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}