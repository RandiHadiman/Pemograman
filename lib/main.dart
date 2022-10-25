import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  GlobalKey<ScaffoldState> _scafoldkey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    showToast() {
      setState(() {
        Fluttertoast.showToast(
            msg: 'This is notification from toast',
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.CENTER);
      });
    }

    showSnackbar() {
      tState(() {
        final snackBar = SnackBar(
            content: Text("This is Notification from Snackbar"),
            duration: Duration(seconds: 5),
            action: SnackBarAction(label: 'Undo', onPressed: () {}));
      });
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Notification"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MaterialButton(
                onPressed: () {
                  showToast();
                },
                child: Text("Show Toast"),
                onPressed: () {
                  showSnackbar();
                },
                child: Text("Show Snackbar"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
