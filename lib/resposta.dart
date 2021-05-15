import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String resposta;
  final void Function() quandoSelecionado;

  Resposta(this.resposta, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.blueAccent,
          ),
          child: Text(resposta),
          onPressed: quandoSelecionado),
    );
  }
}
