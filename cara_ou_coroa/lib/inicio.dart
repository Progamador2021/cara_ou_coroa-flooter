import 'package:cara_ou_coroa/jogo.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  void _jogar(){

    Navigator.push(context, MaterialPageRoute(builder: (context)=>jogo()));

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
            Image.asset("images/logo.png"),
            GestureDetector(
              onTap:_jogar ,
              child: Image.asset("images/botao_jogar.png"),
            )
          ],
        ),
      ),
    );
  }
}
