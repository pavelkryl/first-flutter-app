import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dialer App',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var style = DefaultTextStyle.of(context).style.apply(color: Colors.black45, fontWeightDelta: 2);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dialer"),
      ),
      body: Center(
        child: SizedBox(
          width: 400,
          height: double.infinity,
          child: Column(
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Expanded(child: SizedBox.shrink()),
                    Expanded(
                      flex: 6,
                      child: 
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(style: style,"Ahoj!")
                        ),
                    ),
                    const Expanded(child: SizedBox.shrink()),
                  ]
                ),
            ],
          ),
        ),
        ),
      );
  }
}
