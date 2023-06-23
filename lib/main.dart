import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void responder() {
    setState(() {
      perguntaSelecionada++;
    });

    print(perguntaSelecionada);
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
              Text(perguntas[perguntaSelecionada]),
              ElevatedButton(
                onPressed: responder,
                child: const Text('Resposta 1'),
              ),
              ElevatedButton(
                // onPressed: () => {print("Resposta #3")},
                onPressed: responder,
                child: const Text('Resposta 2'),
              ),
              ElevatedButton(
                // onPressed: funcaoQueRetornaOutraFuncao(),
                onPressed: responder,
                child: const Text('Resposta 3'),
              ),
            ],
          )),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
