import 'package:flutter/material.dart';

class firstscreen extends StatefulWidget {
  const firstscreen({Key? key}) : super(key: key);

  @override
  _firstscreenState createState() => _firstscreenState();
}

class _firstscreenState extends State<firstscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false, //this will remove the back icon from the appbar
          title: Text("First Page")
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlineButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Home Page"))
          ],
        )));
  }
}
