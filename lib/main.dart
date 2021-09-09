import 'package:flutter/material.dart';
import 'firstscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/first': (context) => firstscreen(),
      },
      title: "Navigator",
      theme: ThemeData(primarySwatch: Colors.red),
      home: homepage(),
    );
  }
}

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(          
          title: Text("Navigator")
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlineButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/first');
                    },
                    child: Text("First Page"))
              ],
            ),
          ),
        ));
  }
}
