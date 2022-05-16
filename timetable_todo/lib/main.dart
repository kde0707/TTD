import 'package:flutter/material.dart';
import 'package:timetable_todo/timetablePage.dart';
import 'package:timetable_todo/todoPage.dart';
import 'package:timetable_todo/developerPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TTD',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{
  int _counter = 0;
  TabController? controller;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title,style: TextStyle(color: Colors.black),),
        backgroundColor: Color(0xffF5F4F2),
      ),
      body: TabBarView(
        children: <Widget> [timetablePage(),todoPage(),developerPage()],
        controller: controller,
      ),
      bottomNavigationBar: TabBar(
        indicatorColor: Colors.transparent,
        tabs: <Tab>[
          Tab(icon: Icon(Icons.dashboard,color: Color(0xff323232),),),
          Tab(icon: Icon(Icons.check_circle_outline,color: Color(0xff323232)),),
          Tab(icon: Icon(Icons.people_alt,color: Color(0xff323232)),),
        ], controller: controller,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }
  void dispose(){
    controller!.dispose();
    super.dispose();
  }
}
