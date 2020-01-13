import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Demo Flutter',
        theme: ThemeData(primarySwatch: Colors.green),
        home: HomePage(),
      );
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void onPressed(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text('Informasi'),
      content: Text('Contoh informasi yang akan ditampilkan.'),
      actions: <Widget>[
        RaisedButton(
          child: Text(
            'OK',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Alert Dialog'),
        ),
        body: Center(
          child: RaisedButton(
            child: Text('Tampilkan Dialog'),
            onPressed: () {
              onPressed(context);
            },
          ),
        ),
      );
}
