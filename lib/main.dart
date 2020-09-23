import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scaffold Demo"),
        centerTitle: true,
      ),
      floatingActionButton: showSnackBar(),
    );
  }
}

class showSnackBar extends StatelessWidget {
  const showSnackBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        SnackBar _snackbar = SnackBar(
          content: Text(
            "Yay! I have a SnackBar",
            style: TextStyle(color: Colors.black),
          ),
          behavior: SnackBarBehavior.fixed,
          duration: Duration(
            seconds: 500,
          ),
          backgroundColor: Colors.white,
          action: SnackBarAction(
            label: "Close",
            onPressed: () {
              Scaffold.of(context).hideCurrentSnackBar();
            },
            textColor: Colors.black,
          ),
        );
        Scaffold.of(context).showSnackBar(_snackbar);
      },
      child: Icon(Icons.add),
    );
  }
}
