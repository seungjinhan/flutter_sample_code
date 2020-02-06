import 'package:flutter/material.dart';
import 'package:st_01/main.dart';

class ThemePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome(),
      theme: ThemeData(
        primarySwatch: Colors.green,
        accentColor: Colors.lightGreenAccent,
        backgroundColor: Colors.black12,
      ),
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('theme Exam'),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.home),
              tooltip: 'Home',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute<void>(builder: (BuildContext context) {
                  return MyApp();
                }));
              }),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.black87),
        child: Center(
          child: Container(
            color: Theme.of(context).accentColor,
            child: Text(
              'Hello World',
              style: Theme.of(context).textTheme.title,
            ),
          ),
        ),
      ),
      floatingActionButton: Theme(
        data: Theme.of(context).copyWith(
          colorScheme: Theme.of(context)
              .colorScheme
              .copyWith(secondary: Colors.pinkAccent),
        ),
        child: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
