import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function returnToHome;
  Result({@required this.returnToHome});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Text('You completed the quiz'),
        RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text("Go Back"),
          onPressed: returnToHome,
        )
      ]),
    );
  }
}
