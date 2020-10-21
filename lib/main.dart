import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exquece a Ex!',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Exquece a Ex!'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> _slipUps = [
    'Lembre do dia que ela(e) não te deixou beber',
    'Lembre do temperamento louco dela(e)',
    'Lembre da desconfiança entre vocês',
    'Lembre dos flagras que você levou e nem estava errado(a)',
    'Lembre das vezes que você não teve seu espaço',
    'Ele(a) era muito grudento(a)',
    'Lembre das brigas pelo WhatsApp',
    'Lembre das indecisões',
    'Lembre de quantas vezes você tentou terminar e ela(e) não deixou',
    'Lembre dos familiares que falavam mal de você',
    'Lembre das perseguições no Facebook ou Instagram',
    'Lembre de quanto foi manipulado(a)',
    'Lembre das brigas sem fim',
    'Lembre do ciúme',
    'Lembre da raiva que passava com ex',
  ];
  String _slipUp;

  void _getSlipUp() {
    Random random = new Random();
    int randomNumber = random.nextInt(_slipUps.length);
    setState(() {
      _slipUp = _slipUps[randomNumber];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _slipUp != null
                ? Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: Text(
                  _slipUp,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
              ),
            )
                : Container(),
          ],
        ),
      ),
      bottomSheet: Container(
        height: 100,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: FloatingActionButton(
                onPressed: _getSlipUp,
                tooltip: 'Relembre uma mancada',
                child: SvgPicture.asset('assets/head.svg')),
          ))
      ),
    );
  }
}
