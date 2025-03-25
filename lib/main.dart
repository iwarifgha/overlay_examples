import 'package:flutter/material.dart';
import 'package:overlay_examples/util/overlay_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OverlayExampleHome(),
    );
  }
}

class OverlayExampleHome extends StatelessWidget {
  const OverlayExampleHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Overlay Example")),
      body: Center(
        child: ElevatedButton(
          onPressed: () => OverlayController.showOverlay(context, "An overlay example!"),
          child: const Text("Show Overlay"),
        ),
      ),
    );
  }
}
