import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
       MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            centerTitle: true,

            title: const Text(
                'Dice',
              style: TextStyle(
                fontFamily: 'pacifico',
                fontWeight:FontWeight.bold,
                fontSize: 40.0,
              ),
            ),
            backgroundColor: Colors.red,
          ),
          body:const DicePage(),

        ),
      )
  );
}
class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);


  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDicesNumber =1;
  int rightDicesNumber =1;

  @override
  Widget build(BuildContext context) {
    return  Center(
      child:Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
                onPressed: (){
                  setState((){
                    leftDicesNumber=Random().nextInt(6)+1;

                  });
                },
                child: Image.asset('Images/dices$leftDicesNumber.png'),

              )
          ),
          Expanded(
              child: FlatButton(
                onPressed: (){
                  setState(() {
                    rightDicesNumber=Random().nextInt(6)+1;

                    
                  });
                },
                child: Image.asset('images/dices$rightDicesNumber.png'),
              )
          )

        ],
      ),
    );
  }
}







