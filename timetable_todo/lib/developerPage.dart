import 'package:flutter/material.dart';

class developerPage extends StatefulWidget{
  const developerPage({Key? key}) : super(key: key);

  State<StatefulWidget> createState(){
    return _developerPage();
  }
}

class _developerPage extends State<developerPage>{
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text('developerPage')
          ],
        ),
      ),
    );
  }
}