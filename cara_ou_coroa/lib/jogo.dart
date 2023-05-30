import 'dart:math';

import 'package:flutter/material.dart';

class jogo extends StatefulWidget {
  const jogo({Key? key}) : super(key: key);

  @override
  State<jogo> createState() => _jogoState();
}

class _jogoState extends State<jogo> {

  var caminhoImagem = "images/moeda_cara.png";

  void _caraCoroa() {

    var opcao = ["cara", "coroa"];
    var numero = Random().nextInt(opcao.length);
    var resultado = opcao[numero];

    if (resultado == "cara") {
      setState(() {
        caminhoImagem = "images/moeda_cara.png";
      });
    } else {
      setState(() {
        caminhoImagem = "images/moeda_coroa.png";
      });
    }
    print("Resultado: $resultado");

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: const Color(0xFF61BD8C),

      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Cara ou Coroa"),
      ),

      body: Container(

        // alignment: Alignment.center,

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[
            Image.asset(caminhoImagem),
            GestureDetector(
              onTap: _caraCoroa,
              child: Image.asset("images/botao_jogar.png"),
            )
          ],
        ),
      ),
    );
  }
}
