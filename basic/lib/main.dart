import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Basic Application'),
          centerTitle: true,
          backgroundColor: Colors.red[800],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'V. T. Poddar College, Pandesara',
                style: TextStyle(
                  fontFamily: 'Shalimar',
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red[800],
                ),
              ),
              Text(
                'Nehal Patel',
                style: TextStyle(
                  fontFamily: 'Shalimar',
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[800],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Text('Click'),
          backgroundColor: Colors.red[800],
        ),
      ),
    ),
  );
}
