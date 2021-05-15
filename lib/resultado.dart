import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int notaTotal;
  final void Function() quandoReinicarQuestionario;

  Resultado(this.notaTotal, this.quandoReinicarQuestionario);

  String get fraseResultado {
    if (notaTotal < 8) {
      return 'Parabéns!';
    } else if (notaTotal < 12) {
      return 'Você é bom!';
    } else if (notaTotal < 16) {
      return 'Impressionante!';
    } else {
      return 'Nível Jedi!!!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(
              fraseResultado,
              style: TextStyle(fontSize: 28),
            ),
          ),
          ElevatedButton(
              onPressed: quandoReinicarQuestionario,
              child: Text('Toque para reiniciar.'))
        ]);
  }
}
