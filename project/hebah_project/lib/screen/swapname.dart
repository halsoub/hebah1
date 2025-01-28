import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/name_swap_controller.dart';

// import '../controller/name_swap_controller.dart';

class SwapName extends StatefulWidget {
  const SwapName({super.key});

  @override
  State<SwapName> createState() => _SwapNameState();
}

class _SwapNameState extends State<SwapName> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Swap Name Example'),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "You Name ${context.watch<SwapNameCoontroller>().currentName}",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ]),
        ),
        floatingActionButton:
            Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          FloatingActionButton(
              onPressed: () {
                context.read<SwapNameCoontroller>().swapName();
              },
              child: const Icon(Icons.person)),
        ]));
  }
}
