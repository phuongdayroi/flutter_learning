import 'package:flutter/material.dart';

void main() => runApp(SnackBarDemo());

class SnackBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Snack Bar Demo",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Snack Bar Demo"),
          backgroundColor: Colors.green,
        ),
        body: SnackBarPage(),
      ),
    );
  }
}

class SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () {
          final snackBar = SnackBar(
              content: Text('Yay! A SnackBar!'),
              action: SnackBarAction(
                  label: 'Undo',
                  onPressed: () {
                    // Some code to undo the change!
                  }));
            Scaffold.of(context).showSnackBar(snackBar);

        },
        child: Text("Show Snackbar"),
      ),
    );
  }
}
