import 'package:flutter/material.dart';

class timetablePage extends StatefulWidget{
  const timetablePage({Key? key}) : super(key: key);

  State<StatefulWidget> createState(){
    return _timetablePage();
  }
}

class _timetablePage extends State<timetablePage>{
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text('timetablePage')
          ],
        ),
      ),
    );
  }
}