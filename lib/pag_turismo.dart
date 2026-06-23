import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "App",
    debugShowCheckedModeBanner: false,
    home: PagTurismo(),
  ));
}

class PagTurismo extends StatelessWidget {
  const PagTurismo({super.key});

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
            Text('🗽 Turismo', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white)),
            SizedBox(height: 8),
            Text(
              '• Monumentos: A Estátua da Liberdade em Nova York é o símbolo máximo de acolhimento do país.\n'
              '• Parques Nacionais: Áreas de preservação gigantescas com florestas, vulcões e os gêiseres do Yellowstone.\n'
              '• Grand Canyon: Uma imensa e famosa fenda natural esculpida por um rio ao longo de milhões de anos.\n'
              '• Cidades do Lazer: Destinos focados em diversão em massa, como Orlando (parques) e Las Vegas (luzes).\n'
              '• Viagens de Carro: Viajar pelas estradas históricas (como a Rota 66) é um clássico do turismo local.',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            // Espaço no fim para o FloatingActionButton não tampar o texto
            SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}