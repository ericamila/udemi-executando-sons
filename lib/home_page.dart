import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final player = AudioPlayer();
  double _volume = 0.5;

  _executar() async {
    player.setVolume(_volume);
    // String url = 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-8.mp3';
    // await player.setSourceUrl(url);

    await player.setSource(AssetSource('audios/musica.mp3'));
    await player.resume();
  }

  _pausar() async {
    await player.pause();
  }

  _parar() async {
    await player.stop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Executando Sons'),
        ),
        body: Column(
          children: [
            Slider(
              value: _volume,
              min: 0,
              max: 1,
              divisions: 10,
              onChanged: (novoVolume) {
                setState(() {
                  _volume = novoVolume;
                });
                player.setVolume(novoVolume);
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: GestureDetector(
                    child: Image.asset('assets/imagens/executar.png'),
                    onTap: () {
                      _executar();
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: GestureDetector(
                    child: Image.asset('assets/imagens/pausar.png'),
                    onTap: () {
                      _pausar();
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: GestureDetector(
                    child: Image.asset('assets/imagens/parar.png'),
                    onTap: () {
                      _parar();
                    },
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
