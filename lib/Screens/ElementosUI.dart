import 'package:flutter/material.dart';

class ElementosUI extends StatefulWidget {
  const ElementosUI({super.key});

  @override
  State<ElementosUI> createState() => _ElementosUI();
}

class _ElementosUI extends State<ElementosUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Elementos UI"),
        backgroundColor: const Color.fromARGB(255, 196, 187, 157),
        foregroundColor: Color.fromARGB(255, 231, 231, 231),

      ),
      body: const Center(
        
      ),
    );
  }
}