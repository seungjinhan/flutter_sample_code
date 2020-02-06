import 'package:flutter/material.dart';
import 'package:st_01/pages/page.dart';
import 'package:st_01/pages/pages_list.dart';
import 'package:st_01/theme_page.dart';
import 'package:st_01/stateless_page.dart';

void main() => runApp(MaterialApp(title: 'Home', home: MyApp()));

class MyApp extends StatefulWidget {
  createState() => new MyAppState();
}

class MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main'),
        backgroundColor: Colors.blue,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {},
          ),
        ],
      ),
      body: Page(),
    );
  }
}

class Page extends StatelessWidget {
  _buildPage() {
    return <PageModal>[
      PageModal(name: 'Theme Page', link: ThemePage()),
      PageModal(name: 'Stateless Page', link: StatelessPage()),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: PageList(_buildPage()));
  }
}
