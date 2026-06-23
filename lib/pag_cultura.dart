import 'package:flutter/material.dart';

const String textoCultura = '''
A identidade cultural americana é um mosaico dinâmico e vibrante, moldado pela fusão de povos e tradições do mundo inteiro. A base dessa cultura começou com os povos nativos americanos, cujas tecnologias ancestrais deixaram heranças que usamos até hoje sem perceber, como o uso medicinal da seringa, os precursores os óculos escuros e alimentos populares como a pipoca. Com o tempo, essa bagagem se misturou às tradições dos colonos europeus, à gigantesca e influente herança trazida pelos afro-americanos — que transformou a música e a arte global — e às sucessivas ondas de imigrantes latinos e asiáticos.

Essa rica mistura gerou o conceito do American Way of Life (Estilo de Vida Americano), focado no dinamismo, no consumo e na modernidade, que acabou sendo exportado para o planeta inteiro através de hábitos simples, como o consumo de fast-food e o uso universal das calças jeans. Na literatura e no folclore, o país construiu mitos poderosos para traduzir o seu espírito: desde o gigante lenhador Paul Bunyan, que representa a força bruta dos trabalhadores que desbravaram as florestas no século XIX, até o famoso Tio Sam, uma personificação do próprio governo e do patriotismo americano que nasceu na Guerra de 1812 e foi imortalizado nos cartazes de recrutamento militar.

Hoje, os Estados Unidos são a maior potência de entretenimento do planeta. A indústria cinematográfica de Hollywood, as grandes produções de séries de televisão e de histórias em quadrinhos, além da criação de ritmos musicais revolucionários como o Jazz, o Blues, o Rock 'n' Roll, o Hip-Hop e a música Pop, ditam as tendências e influenciam o comportamento, a moda e o consumo de jovens e adultos em todos os continentes.
''';

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
