import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "App",
    debugShowCheckedModeBanner: false,
    home: PagTradicoes(),
  ));
}

class PagTradicoes extends StatelessWidget {
  const PagTradicoes({super.key});

  @override
  Widget build(BuildContext context) {
    // Criamos o controlador diretamente no método build do StatelessWidget
    final ScrollController controller = ScrollController();

    // Função de scroll idêntica à do seu exemplo de referência
    void scrollDown() {
      controller.animateTo(
        controller.position.maxScrollExtent,
        duration: const Duration(seconds: 1),
        curve: Curves.fastOutSlowIn,
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xFF002868), // Fundo Azul
      
      // Botão flutuante para descer a página automaticamente
      floatingActionButton: FloatingActionButton.small(
        onPressed: scrollDown,
        child: const Icon(Icons.arrow_downward_sharp),
      ),
      
      appBar: AppBar(
        leading: ElevatedButton(
          onPressed: () {
            Navigator.maybePop(context);
          },
          child: Icon(Icons.arrow_back),
        ),
        title: const Text('EUA Info'),
        centerTitle: true,
        backgroundColor: Colors.blue.shade500,
      ),

      // SingleChildScrollView conectado ao controlador (controller)
      body: SingleChildScrollView(
        controller: controller,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            // --- SEÇÃO TRADIÇÕES ---
            Text('🦃 Tradições', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white)),
            SizedBox(height: 8),
            Text(
              '• Ação de Graças: O feriado familiar mais importante, focado em gratidão e em um jantar com peru assado.\n'
              '• Orgulho da Bandeira: Os americanos adoram expor a bandeira nacional em suas casas e comércios.\n'
              '• 4 de Julho: O Dia da Independência é festejado com churrasco ao ar livre e muitos fogos de artifício.\n'
              '• Halloween: No dia 31 de outubro, as pessoas decoram as casas com abóboras e as crianças pedem doces.\n'
              '• Esportes: Grandes jogos, como o Super Bowl (futebol americano), param o país como se fossem feriados.',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}