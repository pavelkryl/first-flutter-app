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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialer"),
      ),
      body: Center(
        child: SizedBox(
          width: 400,
          height: double.infinity,
          child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 3,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            children: [
              Tlacitko(cislice: "1"),
              Tlacitko(cislice: "2", pismena: "ABC"),
              Tlacitko(cislice: "3", pismena: "DEF"),
              
              Tlacitko(cislice: "4", pismena: "GHI"),
              Tlacitko(cislice: "5", pismena: "JKL"),
              Tlacitko(cislice: "6", pismena: "MNO"),
              
              Tlacitko(cislice: "7", pismena: "PQR"),
              Tlacitko(cislice: "8", pismena: "STU"),
              Tlacitko(cislice: "9", pismena: "WXYZ"),
              
              Tlacitko(cislice: "*"),
              Tlacitko(cislice: "0", pismena: "+"),
              Tlacitko(cislice: "#"),
              ],
            ),
        ),
        ),
      );
  }
}

class Tlacitko extends StatelessWidget {
  final String cislice;
  final String? pismena;
  
  const Tlacitko({
    super.key,
    required this.cislice,
    this.pismena
  });

  @override
  Widget build(BuildContext context) {
    var secondaryColor = Theme.of(context).colorScheme.secondary;
    var style = DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2, color: secondaryColor, fontWeightDelta: 2);
    return ElevatedButton(
      onPressed: () {print(cislice);},
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        ),
        fixedSize: Size(50, 50),
        padding: EdgeInsets.all(25),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(pismena?? ""),
          Text(cislice, style: style),
        ],
      ),
    );
  }
}


