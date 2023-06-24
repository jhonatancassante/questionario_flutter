import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciar;

  const Resultado(this.pontuacao, this.quandoReiniciar, {super.key});

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabéns!';
    } else if (pontuacao < 12) {
      return 'Você é bom!';
    } else if (pontuacao < 16) {
      return 'Impressionante!';
    } else {
      return 'Nível Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: const TextStyle(fontSize: 28),
          ),
        ),
        TextButton(
          onPressed: quandoReiniciar,
          style: const ButtonStyle(
            foregroundColor: MaterialStatePropertyAll<Color>(Colors.blue),
            textStyle: MaterialStatePropertyAll<TextStyle>(TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
          ),
          child: const Text('Reiniciar'),
        )
      ],
    );
  }
}
