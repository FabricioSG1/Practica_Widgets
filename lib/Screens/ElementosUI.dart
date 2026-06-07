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
  padding: const EdgeInsets.all(20),
  child: Column(
    children: [
      const Expanded(
        child: Center(
          child: Text(
            "Hola Flutter",
            style: TextStyle(
              fontSize: 38,
              color: Colors.blue,
            ),
          ),
        ),
      ),

      // Controles
      Expanded(
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "fontSize: 38",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Slider(
              value: 38,
              min: 10,
              max: 60,
              onChanged: (value) {},
            ),

            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                const Text(
                  "Bold:",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(width: 0),
                Switch(
                  value: false,
                  onChanged: (value) {},
                ),

                const SizedBox(width: 0),
                const Text(
                  "Italic:",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
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
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Icon(Icons.format_align_left),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Icon(Icons.format_align_center),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Icon(Icons.format_align_right),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),
            const Text(
              "Color:",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),

            const SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.circle,
                    size: 50,
                  ),
                  color: Colors.red,
                ),

                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.circle,
                    size: 50,
                  ),
                  color: Colors.black87,
                ),

                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.circle,
                    size: 50,
                  ),
                  color: Colors.green,
                ),

                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.circle,
                    size: 50,
                  ),
                  color: Colors.blue,
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