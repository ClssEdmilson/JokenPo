import 'package:flutter/material.dart';
import "dart:math";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'JokenPo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var imagemApp = AssetImage("imagens/padrao.png");
  var mensagem = "Escolha uma das opções abaixo";
  void opcaoSelecionado(String opcao) {
    var opcoes = ["pedra", "papel", "tesoura"];
    var randomica = Random().nextInt(3);
    var escolhaApp = opcoes[randomica];

    switch (escolhaApp) {
      case "pedra":
        setState(() {
          this.imagemApp = AssetImage("imagens/pedra.png");
        });
        if (opcao == "pedra") {
          setState(() {
            mensagem = "Empatamos!";
          });
        } else if (opcao == "tesoura") {
          setState(() {
            mensagem = "Você perdeu!";
          });
        } else {
          setState(() {
            mensagem = "Você ganhou!";
          });
        }
        break;
      case "papel":
        setState(() {
          this.imagemApp = AssetImage("imagens/papel.png");
        });
        if (opcao == "pedra") {
          setState(() {
            mensagem = "Você perdeu";
          });
        } else if (opcao == "tesoura") {
          setState(() {
            mensagem = "Você ganhou!";
          });
        } else {
          setState(() {
            mensagem = "Empatamos!";
          });
        }
        break;
      case "tesoura":
        setState(() {
          this.imagemApp = AssetImage("imagens/tesoura.png");
        });
        if (opcao == "pedra") {
          setState(() {
            mensagem = "Você ganhou!";
          });
        } else if (opcao == "tesoura") {
          setState(() {
            mensagem = "Empatamos!";
          });
        } else {
          setState(() {
            mensagem = "Você perdeu!";
          });
        }
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "JokenPo",
        ),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(24),
            child: Text(
              "Escolha do app:",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Image(image: imagemApp),
          Padding(
            padding: EdgeInsets.all(14),
            child: Text(
              mensagem,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () => opcaoSelecionado("pedra"),
                child: Image.asset(
                  "imagens/pedra.png",
                  scale: 1.2,
                ),
              ),
              GestureDetector(
                onTap: () => opcaoSelecionado("papel"),
                child: Image.asset(
                  "imagens/papel.png",
                  scale: 1.2,
                ),
              ),
              GestureDetector(
                onTap: () => opcaoSelecionado("tesoura"),
                child: Image.asset(
                  "imagens/tesoura.png",
                  scale: 1.2,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
