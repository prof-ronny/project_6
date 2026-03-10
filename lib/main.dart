import 'package:flutter/material.dart';

import 'display_counter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Widgets Project',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.indigo,
        ),
      ),
      home: const CounterPageStateful(),
    );
  }
}

class CounterPageStateful extends StatefulWidget {
  const CounterPageStateful({super.key});
  @override
  State<CounterPageStateful> createState() =>
      _CounterPageStatefulState();
}

class _CounterPageStatefulState
    extends State<CounterPageStateful> {
  int value = 0; // mutable state
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter (refactored)'),
      ),
      body: Center(
        // uses the child widget
        child: DisplayCounter(value: value),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            value++; // updates the state
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
