import 'package:flutter/material.dart';
import '../todoItem.dart';
class todoPage extends StatefulWidget{
 final List<todoItem>? list;
 const todoPage({Key? key, this.list}) : super(key: key);

 State<StatefulWidget> createState(){
   return _todoPage();
 }
}

class _todoPage extends State<todoPage>{
  late final List<todoItem>? list;
  String? input = " ";
  bool _isSelected = false;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        child: Padding(
          padding: EdgeInsets.only(
              left:MediaQuery.of(context).size.width*0.1,
              right: MediaQuery.of(context).size.width*0.1,
              top:MediaQuery.of(context).size.width*0.05,),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      child:
                      Text(
                          '총 6개',
                        style: TextStyle(fontSize: 16),
                      )
                  ),
                  Container(
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.add_circle_outline),
                          onPressed: (){

                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: (){

                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      //Checkbox(value: value, onChanged: onChanged),
                      Icon(Icons.circle_outlined,size: 17,),
                      Container(width: 11),
                      Text("UI/UX Programming Project")
                    ],
                  ),
                  Divider(
                    height: 30,
                    thickness: 1,
                  ),
                  //=====================================
                  Row(
                    children: [
                      //Checkbox(value: value, onChanged: onChanged),
                      Icon(Icons.circle_outlined,size: 17,),
                      Container(width: 11,),
                      Text("SW PPT")
                    ],
                  ),
                  Divider(
                    height: 30,
                    thickness: 1,
                  ),
                  Row(
                    children: [
                      //Checkbox(value: value, onChanged: onChanged),
                      Icon(Icons.circle_outlined,size: 17,),
                      Container(width: 11,),
                      Text("SW PPT")
                    ],
                  ),
                  Divider(
                    height: 30,
                    thickness: 1,
                  ),
                  Row(
                    children: [
                      //Checkbox(value: value, onChanged: onChanged),
                      Icon(Icons.check_circle_outlined,size: 17,color: Colors.grey,),
                      Container(width: 11,),
                      Text("파이썬 멘토링",style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                  Divider(
                    height: 30,
                    thickness: 1,
                  ),
                  Row(
                    children: [
                      //Checkbox(value: value, onChanged: onChanged),
                      Icon(Icons.check_circle_outline,size: 17,color: Colors.grey,),
                      Container(width: 11,),
                      Text("UI 디자인",style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                  Divider(
                    height: 30,
                    thickness: 1,
                  ),
                  Row(
                    children: [
                      //Checkbox(value: value, onChanged: onChanged),
                      Icon(Icons.check_circle_outlined,size: 17,color: Colors.grey,),
                      Container(width: 11,),
                      Text("파이썬 YOLO V5",style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                  Divider(
                    height: 30,
                    thickness: 1,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}