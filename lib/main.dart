import 'package:flutter/material.dart';

final appState = MyAppState();

void main() {
  runApp(MyApp());
}

class MyAppState {
  var current = "ahoj";
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) =>
      MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home: MyHomePage(),
      );

}


class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
    Scaffold(
      body: Column(
        children: [
          Text('A random idea:'),
          Text(appState.current),
        ],
      ),
    );
}
