import 'package:flutter/material.dart';

main() => runApp(const PerguntaApp());

class PerguntaApp extends StatelessWidget {
  const PerguntaApp({super.key});

  void responder() {
    print('Pergunta respondida!');
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?'
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Perguntas"),
          ),
          body: Column(
            children: <Widget>[
              Text(perguntas[0]),
              ElevatedButton(
                onPressed: responder,
                child: const Text('Resposta 1'),
              ),
              ElevatedButton(
                onPressed: responder,
                child: const Text('Resposta 3'),
              ),
              ElevatedButton(
                onPressed: responder,
                child: const Text('Resposta 3'),
              ),
            ],
          )),
    );
  }
}
