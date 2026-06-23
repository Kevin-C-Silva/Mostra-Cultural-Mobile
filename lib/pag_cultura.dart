import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: "App",
      debugShowCheckedModeBanner: false,
      home: PagCultura(),
    ),
  );
}

class PagCultura extends StatelessWidget {
  const PagCultura({super.key});

  @override
  Widget build(BuildContext context) {
    final ScrollController controller = ScrollController();

    void scrollDown() {
      controller.animateTo(
        controller.position.maxScrollExtent,
        duration: const Duration(seconds: 1),
        curve: Curves.fastOutSlowIn,
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xFF002868),
      floatingActionButton: FloatingActionButton.small(
        onPressed: scrollDown,
        child: const Icon(Icons.arrow_downward_sharp),
      ),

      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors
              .white,
          onPressed: () {
            Navigator.maybePop(context);
          },
        ),
        title: const Text('EUA Info'),
        centerTitle: true,
        backgroundColor: Colors.blue.shade500,
      ),

      body: SingleChildScrollView(
        controller: controller,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Cultura',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 8),
            Text(
              '• Mistura: Cultura formada pela união de tradições nativas, europeias, afro-americanas e de imigrantes.\n'
              '• Estilo de Vida: Hábitos como comer fast-food e usar calças jeans se espalharam pelo mundo todo.\n'
              '• Entretenimento: O cinema de Hollywood, as séries de TV e o Rock/Pop nasceram aqui e dominam o mundo.\n'
              '• Invenções: Muitas tecnologias do nosso dia a dia, desde remédios naturais até a internet, surgiram no país.\n'
              '• Símbolos: Personagens folclóricos como o Tio Sam nasceram para representar o orgulho do povo.',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
