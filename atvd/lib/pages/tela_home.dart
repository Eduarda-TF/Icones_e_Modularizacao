import 'package:flutter/material.dart';
import '../widgets/card_icone.dart';
import 'tela_perfil.dart';
import 'tela_configuracoes.dart';
import 'tela_favoritos.dart';
import 'tela_notificacoes.dart';
import 'tela_mensagens.dart';

class TelaHome extends StatefulWidget {
  const TelaHome({super.key});

  @override
  State<TelaHome> createState() => _TelaHomeState();
}

class _TelaHomeState extends State<TelaHome> {
  void _exibirModalInformativo(BuildContext context, String titulo, String informacao, Color cor) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.info_outline, color: cor, size: 28),
                  const SizedBox(width: 10),
                  Text(
                    titulo,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: cor),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Text(
                informacao,
                style: const TextStyle(fontSize: 16, color: Colors.black87),
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: cor, foregroundColor: Colors.white),
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Entendi'),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App de Ícones da Eduarda Torres'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(12.0),
        children: [
          //card dp perfil
          CardIcone(
            icone: Icons.person,
            titulo: 'Perfil',
            descricao: 'Gerencie suas informações pessoais e dados da conta.',
            textoBotao: 'Ver Perfil',
            cor: Colors.blue,
            aoClicar: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const TelaPerfil()));
            },
            aoSegurar: () => _exibirModalInformativo(
              context, 
              'Dica do Perfil', 
              'Clique normal abre a página de perfil. Segure para ver este resumo rápido.', 
              Colors.blue
            ),
          ),

          //card das configuracoes
          CardIcone(
            icone: Icons.settings,
            titulo: 'Configurações',
            descricao: 'Ajuste as preferências do aplicativo e notificações.',
            textoBotao: 'Abrir Ajustes',
            cor: Colors.orange,
            aoClicar: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const TelaConfiguracoes()));
            },
            aoSegurar: () => _exibirModalInformativo(
              context, 
              'Ajuda de Ajustes', 
              'Aqui você altera o tema do sistema, limpa o cache e gerencia a privacidade.', 
              Colors.orange
            ),
          ),

          //card dos favoritos
          CardIcone(
            icone: Icons.favorite,
            titulo: 'Favoritos',
            descricao: 'Acesse seus itens e conteúdos salvos preferidos.',
            textoBotao: 'Meus Favoritos',
            cor: Colors.red,
            aoClicar: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const TelaFavoritos()));
            },
            aoSegurar: () => _exibirModalInformativo(
              context, 
              'Info Favoritos', 
              'Todos os itens marcados com coração durante a navegação ficam salvos na página.', 
              Colors.red
            ),
          ),

          //card das notificacoes
          CardIcone(
            icone: Icons.notifications,
            titulo: 'Notificações',
            descricao: 'Fique por dentro das últimas novidades e alertas.',
            textoBotao: 'Ver Alertas',
            cor: Colors.purple,
            aoClicar: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const TelaNotificacoes()));
            },
            aoSegurar: () => _exibirModalInformativo(
              context, 
              'Central de Alertas', 
              'Ative ou desative os alertas push diretamente na página de notificações.', 
              Colors.purple
            ),
          ),

          //card das mensagens
          CardIcone(
            icone: Icons.message,
            titulo: 'Mensagens',
            descricao: 'Verifique suas conversas e notificações de chat mais recentes.',
            textoBotao: 'Abrir Chat',
            cor: Colors.teal,
            aoClicar: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const TelaMensagens()));
            },
            aoSegurar: () => _exibirModalInformativo(
              context, 
              'Status do Chat', 
              'Você tem conversas não lidas. Clique no botão para responder seus amigos.', 
              Colors.teal
            ),
          ),
        ],
      ),
    );
  }
}