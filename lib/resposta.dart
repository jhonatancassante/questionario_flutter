import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() naSelecao;

  const Resposta(this.texto, this.naSelecao, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(8, 4, 8, 4),
      child: ElevatedButton(
        onPressed: naSelecao,
        style: const ButtonStyle(
          textStyle: MaterialStatePropertyAll<TextStyle>(TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          )),
          padding: MaterialStatePropertyAll<EdgeInsets>(EdgeInsets.all(12)),
        ),
        child: Text(texto),
      ),
    );
  }
}
