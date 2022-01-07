import 'package:flutter/material.dart';

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
      home: const MyHomePage(title: 'JokenPo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
          Image.asset(
            "imagens/padrao.png",
            scale: 1.2,
          ),
          const Padding(
            padding: EdgeInsets.all(14),
            child: Text(
              "Escolha uma opção abaixo:",
              style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                "imagens/pedra.png",
                scale: 1.2,

              ),
              Image.asset(
                "imagens/papel.png",
                scale: 1.2,
              ),
              Image.asset(
                "imagens/tesoura.png",
                scale: 1.2,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
