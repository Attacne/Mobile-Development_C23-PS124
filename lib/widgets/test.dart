import 'package:flutter/material.dart';

class Test1 extends StatefulWidget {
  const Test1({Key? key}) : super(key: key);

  @override
  State<Test1> createState() => _Test1State();
}

class _Test1State extends State<Test1> {
  bool isTaped = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              isTaped = !isTaped;
              setState(() {});
            },
            child: Text('extended'),
          ),
          AnimatedContainer(
            color: Colors.blue,
            duration: Duration(milliseconds: 200),
            height: isTaped ? 300 :100,
            width:  200,
          )
        ],
      ),
    );
  }
}
