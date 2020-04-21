import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function returnToHome;
  final int totalResult;
  Result({@required this.returnToHome, @required this.totalResult});

  String get resultPhrase {
    var resultText = 'You did it';
    print(totalResult);
    if (totalResult < 18) {
      resultText = 'you are awesome and innocent';
    } else if (totalResult <= 30) {
      resultText = 'you are ... strange!?';
    } else {
      resultText = 'you are bad!!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Text(
          resultPhrase,
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
        ),
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
