import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) =>
    ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Dialer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home: MyHomePage(),
      ),
    );
}

class MyAppState extends ChangeNotifier {
  var current = "777586648";

}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    IconData icon = Icons.favorite;

    return Scaffold(
      body: Column(
        children: [
          Text(appState.current),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TlacitkoCislice(cislice: "1", text: "abc"),
              TlacitkoCislice(cislice: "2", text: "def"),
              TlacitkoCislice(cislice: "3", text: "ghi"),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TlacitkoCislice(cislice: "4", text: "jkl"),
              TlacitkoCislice(cislice: "5", text: "mno"),
              TlacitkoCislice(cislice: "6", text: "pqrs"),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TlacitkoCislice(cislice: "7", text: "tuv"),
              TlacitkoCislice(cislice: "8", text: "wxyz"),
              TlacitkoCislice(cislice: "9", text: "_"),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TlacitkoCislice(cislice: "*", text: null),
              TlacitkoCislice(cislice: "0", text: "+"),
              TlacitkoCislice(cislice: "#", text: null),
            ],
          ),
        ],
      ),
    );
  }
}

class TlacitkoCislice extends StatelessWidget {
  final String cislice;
  final String? text;

  const TlacitkoCislice({
    super.key,
    required this.cislice,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    TextStyle style = DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2);

    return TextButton(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12)
        ),
      ),
      onPressed: () {
        print("button $cislice pressed");
      },
      child: Column(children: [
        Text(text ?? ""),
        Text(cislice, style: style)
      ]),
    );
  }
}
