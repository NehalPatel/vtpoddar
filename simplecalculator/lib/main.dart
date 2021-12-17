import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Simple Calculator'),
        ),
        body: const Calculator(),
      ),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  TextEditingController number1Controller = TextEditingController();
  TextEditingController number2Controller = TextEditingController();

  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          TextField(
            keyboardType: TextInputType.number,
            controller: number1Controller,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter First Number',
            ),
          ),
          const SizedBox(height: 16),
          TextField(
            keyboardType: TextInputType.number,
            controller: number2Controller,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter Second Number',
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              setState(() {
                result = double.parse(number1Controller.text) +
                    double.parse(number2Controller.text);
              });
            },
            child: const Text('Add'),
          ),
          const SizedBox(height: 16),
          Text(
            'Result: $result',
            style: const TextStyle(fontSize: 24),
          ),
        ],
      ),
    );
  }
}
