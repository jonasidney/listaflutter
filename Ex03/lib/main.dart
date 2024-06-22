
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'AS 7 MARAVILHAS DO MUNDO';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        // #docregion addWidget
        body: const SingleChildScrollView(
          child: Column(
            children: [
              Separador(),
              ImageSection(
                image: 'images/maravilha_01.jpg',
              ),
              TitleSection(
                name: 'Grande Muralha da China',
                location: 'China',
              ),
              //ButtonSection(),
              TextSection(
                description:
                    'Uma impressionante série de fortificações feitas de pedra,'
                    'tijolo e outros materiais, construída ao longo de séculos'
                    'para proteger a China contra invasões. A muralha se estende'
                    'por milhares de quilômetros através de montanhas e desertos.',
              ),

              Separador(),

              ImageSection(
                image: 'images/maravilha_02.jpg',
              ),
              TitleSection(
                name: 'Cidade de Petra',
                location: 'Jordânia',
              ),
              //ButtonSection(),
              TextSection(
                description:
                    'Uma cidade histórica e arqueológica famosa por sua arquitetura'
                    'esculpida em rochas. Petra foi a capital do antigo reino Nabateu'
                    'e é conhecida por suas fachadas monumentais, incluindo o famoso'
                    'Tesouro (Al-Khazneh).',
              ),

              Separador(),

              ImageSection(
                image: 'images/maravilha_03.jpg',
              ),
              TitleSection(
                name: 'Cristo Redentor',
                location: 'Brasil',
              ),
              //ButtonSection(),
              TextSection(
                description:
                    'Uma estátua de Jesus Cristo localizada no topo do Morro do'
                    'Corcovado, no Rio de Janeiro. A estátua, com braços abertos,'
                    'é um símbolo do Cristianismo e uma icônica imagem da cidade.',
              ),

              Separador(),

              ImageSection(
                image: 'images/maravilha_04.jpg',
              ),
              TitleSection(
                name: 'Machu Pichu',
                location: 'Peru',
              ),
              //ButtonSection(),
              TextSection(
                description:
                    'Uma antiga cidade Inca situada nas montanhas dos Andes, famosa'
                    'por suas ruínas bem preservadas e vistas panorâmicas. Machu Picchu'
                    'é um exemplo impressionante da engenharia e arquitetura dos Incas.',
              ),

              Separador(),

              ImageSection(
                image: 'images/maravilha_05.jpg',
              ),
              TitleSection(
                name: 'Chichén Itzá',
                location: 'México',
              ),
              //ButtonSection(),
              TextSection(
                description:
                    'Um complexo de ruínas maias na Península de Yucatán. A pirâmide'
                    'de Kukulkán é o destaque, refletindo a profunda compreensão maia'
                    'de astronomia e engenharia.',
              ),

              Separador(),

              ImageSection(
                image: 'images/maravilha_06.jpg',
              ),
              TitleSection(
                name: 'Coliseu',
                location: 'Itália',
              ),
              //ButtonSection(),
              TextSection(
                description:
                    'Um anfiteatro oval no centro de Roma, conhecido por suas grandiosas'
                    'estruturas e pela realização de combates de gladiadores. É um símbolo'
                    'duradouro do Império Romano.',
              ),

              Separador(),

              ImageSection(
                image: 'images/maravilha_07.jpg',
              ),
              TitleSection(
                name: 'Taj Mahal',
                location: 'Índia',
              ),
              //ButtonSection(),
              TextSection(
                description:
                    'Um mausoléu de mármore branco em Agra, construído pelo imperador'
                    'Mughal Shah Jahan em memória de sua esposa Mumtaz Mahal. É celebrado'
                    'por sua beleza arquitetônica e história de amor.',
              ),
                           
            ],
          ),
        ),
        // #enddocregion addWidget
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.name,
    required this.location,
  });

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  location,
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        description,
        softWrap: true,
      ),
    );
  }
}
// #docregion ImageSection
class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    // #docregion Image-asset
    return Image.asset(
      image,
      width: 600,
      height: 240,
      fit: BoxFit.cover,
    );
    // #enddocregion Image-asset
  }
}

//teste
class Separador extends StatelessWidget {
  const Separador({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10.0,
      width: double.infinity,
      color: Colors.grey,
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
    );
  }
}