import 'package:flutter/material.dart';

class DisplayCounter extends StatelessWidget {
  final int value;
  const DisplayCounter({
    super.key,
    required this.value,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          'Current value:',
          style: TextStyle(fontSize: 20),
        ),
        const SizedBox(height: 8),
        Text(
          '$value',
          style: const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
