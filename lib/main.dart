import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView  Daniela Lopez  Mat:1240'),
          backgroundColor: Colors.green,
          titleTextStyle: TextStyle(
            fontSize: 20,
          ),
        ),
        body: ListView.separated(
          itemBuilder: (context, position) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'List Item $position',
                ),
              ),
            );
          },
          separatorBuilder: (context, position) {
            return Card(
              color: Colors.grey,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  'Separator $position',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            );
          },
          itemCount: 6,
        ),
      ),
    );
  }
}
