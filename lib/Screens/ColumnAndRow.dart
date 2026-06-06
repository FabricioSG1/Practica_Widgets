import 'package:flutter/material.dart';

class ColumnAndRow extends StatefulWidget {
  const ColumnAndRow({super.key});

  @override
  State<ColumnAndRow> createState() => _ColumnAndRowState();
}

class _ColumnAndRowState extends State<ColumnAndRow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pantalla Column y Row"),
        backgroundColor: const Color.fromARGB(255, 0, 150, 110),
        foregroundColor: const Color.fromARGB(255, 231, 231, 231),
      ),
      body: Padding(
        padding: const EdgeInsets.all(1),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Center(
                child: Column(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                    color: Colors.amber,
                      child: const Text("A"),
                    ),
                    Container(
                      width: 90,
                      height: 90,
                    color: Colors.green,
                      child: const Text("B"),
                    ),
                    Container(
                      width: 60,
                      height: 60,
                      color: Colors.blue,
                      child: const Text("C"),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        "Modo:",
                        style: TextStyle(),
                      ),
                      const Text("Column"),
                      Switch(
                        value: false,
                        onChanged: (value) {},
                      ),
                      const Text("Row"),
                    ],
                  ),
                  const Text("mainAxisAlignment"),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("start"),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("center"),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("end"),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  const Text(
                    "crossAxisAlignment:",
                    style: TextStyle(),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("start"),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("center"),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("end"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
