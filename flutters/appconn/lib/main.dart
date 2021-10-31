import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Column(
        
        children: [
          Text('Software Architect', textAlign: TextAlign.right,),
          Container(
            margin: EdgeInsets.all(90),
            padding: EdgeInsets.all(90),
            decoration: BoxDecoration(
              border: Border.all(width: 3, color: Colors.white),
            ),
            child: Column(
              children: <Widget>[
                Text(
                  'Claudiney',
                  textAlign: TextAlign.justify,
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Itiki',
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: const MyHomePage(title: 'Sistema Administrativo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // termos reservados em azul
  // Comentários com // e em bloco /* */
  // r - Hot Reload
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _numeroAleatorio = 0;
  final List _frases = [
    'Hello',
    'Hi, There!',
    'Good Afternoon',
    'Good Morning',
    'Good Night',
    'Good Evening'
  ];

  void _incrementCounter() {
    setState(() {
      _numeroAleatorio = new Random().nextInt(6);
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
            const Text(
              "It's Okay:",
            ),
            Text(
              _frases[_numeroAleatorio],
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: "Increment",
        child: const Icon(Icons.access_alarm),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
