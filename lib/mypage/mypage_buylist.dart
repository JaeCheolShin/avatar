import 'package:flutter/material.dart';

class Buylist extends StatelessWidget {
  final List<String> entries = <String>[
    'Red',
    'Green',
    'Blue',
    'Pink',
    'Black'
  ];

  Buylist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView'),
        ),
        body: ListView.separated(
          padding: const EdgeInsets.all(8),
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: const EdgeInsets.all(16),
              child: Text(entries[index]), //Color is ${entries[index]}
            );
          },
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
        ));
  }
}
