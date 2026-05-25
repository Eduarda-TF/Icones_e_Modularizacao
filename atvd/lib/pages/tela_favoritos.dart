import 'package:flutter/material.dart';

class TelaFavoritos extends StatelessWidget {
  const TelaFavoritos({super.key});

  final List<Map<String, String>> itensFavoritos = const [
    {
      'titulo': 'Pato de borracha para banho',
      'descricao': 'RS 18,80',
      'imagem': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_5IJkPK5hUkouWZrpdtcEwlcdqH3n-GsYoQ&s',
    },
    {
      'titulo': 'Funko pop pokemon absol',
      'descricao': 'RD 299,99',
      'imagem': 'https://m.media-amazon.com/images/I/616hoXN6xTL.jpg',
    },
    {
      'titulo': 'Livro Powerless',
      'descricao': 'RS 150,50',
      'imagem': 'https://m.media-amazon.com/images/I/812NgH11-JL.jpg',
    },
    {
      'titulo': 'Mouse sem fio',
      'descricao': 'RS 149,99',
      'imagem': 'https://http2.mlstatic.com/D_Q_NP_837852-MLA99995332375_112025-O.webp',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meus Favoritos'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12.0),
        itemCount: itensFavoritos.length,
        itemBuilder: (context, index) {
          final item = itensFavoritos[index];
          
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            clipBehavior: Clip.antiAlias, 
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      item['imagem']!,
                      height: 150,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Container(
                          height: 150,
                          color: Colors.grey.shade200,
                          child: const Center(
                            child: CircularProgressIndicator(color: Colors.red),
                          ),
                        );
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item['titulo']!,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            item['descricao']!,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: 12,
                  right: 12,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withAlpha(220), 
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withAlpha(40),
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.favorite, color: Colors.red),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('${item['titulo']} removido dos favoritos.'),
                            duration: const Duration(seconds: 1),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}