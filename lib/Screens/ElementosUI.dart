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
      body: Padding(
  padding: const EdgeInsets.all(0),
  child: Column(
    children: [
      const Expanded(
        child: Center(
          child: Text(
            "Hola Flutter",
          ),
        ),
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "fontSize: 38",
            ),
            Slider(
              value: 38,
              min: 10,
              max: 60,
              onChanged: (value) {},
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Text(
                  "Bold:",
                ),
                const SizedBox(width: 0),
                Switch(
                  value: false,
                  onChanged: (value) {},
                ),
                const SizedBox(width: 0),
                const Text(
                  "Italic:",
                ),
                const SizedBox(width: 0),
                Switch(
                  value: false,
                  onChanged: (value) {},
                ),
              ],
            ),
            const SizedBox(height: 10),
            Center(
              child: ToggleButtons(
                isSelected: const [false, true, false],
                onPressed: (index) {},
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Color:",
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.circle,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.circle,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.circle,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.circle,
                  ),
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