import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "App",
    debugShowCheckedModeBanner: false,
    home: PagHistoria(),
  ));
}

class PagHistoria extends StatelessWidget {
  const PagHistoria({super.key});

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
            // --- SEÇÃO HISTÓRIA ---
            Text('🏛️ História', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white)),
            SizedBox(height: 8),
            Text(
              "Os Estados Unidos possuem uma trajetória marcada por rápida expansão e grande impacto global." 
              "Muito antes da chegada dos europeus, o continente já era habitado por centenas de nações indígenas com culturas ricas e diversas." 
              "A partir do século XVII, a colonização britânica estabeleceu as Treze Colônias na Costa Leste, que conquistaram sua independência no famoso quatro de julho de 1776." 
              "Durante o século XIX, o país cresceu em direção ao oeste na era dos caubóis e enfrentou uma violenta guerra civil que unificou a nação e aboliu a escravidão."
              "Já no século XX, os EUA se industrializaram rapidamente e consolidaram sua posição como a maior potência econômica, tecnológica e militar do planeta.",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}