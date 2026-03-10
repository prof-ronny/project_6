import 'package:flutter/material.dart';

import 'counter_controller.dart';
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
      ),
      home: const CounterPageStateful(),
    );
  }
}

class CounterPageStateful extends StatefulWidget {
  const CounterPageStateful({super.key});
  @override
  State<CounterPageStateful> createState() => _CounterPageStatefulState();
}

class _CounterPageStatefulState extends State<CounterPageStateful> {
  final _controller = CounterController(); // instantiate the controller
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter (refactored)')),
      body: Center(
        // uses the child widget
        child: DisplayCounter(value: _controller.value),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            heroTag: 'add',
            onPressed: () {
              setState(() {
                _controller.increment();
              });
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            heroTag: 'reset',
            onPressed: () {
              setState(() {
                _controller.reset();
              });
            },
            child: const Icon(Icons.refresh),
          ),
        ],
      ),
    );
  }
}
