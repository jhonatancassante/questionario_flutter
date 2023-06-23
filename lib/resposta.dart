import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final Function() funcao;

  const Resposta(this.texto, this.funcao, {super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: funcao,
      child: Text(texto),
    );
  }
}
