import 'package:flutter/material.dart';

class ElementosUI extends StatefulWidget {
  const ElementosUI({super.key});
  

  @override
  State<ElementosUI> createState() => _ElementosUI();
  
}

class _ElementosUI extends State<ElementosUI> {
  double fontSize = 38;
  bool isBold = false;
  bool isItalic = false;
  Color color = Colors.blue;
  int alignmentIndex = 1; 

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
       Expanded(
        child: Container(
         width: double.infinity,
        alignment: alignmentIndex == 0
          ? Alignment.centerLeft
          : alignmentIndex == 1
            ? Alignment.center
            : Alignment.centerRight,

        child: Text(
         "Hola Flutter",
          style: TextStyle(
          fontSize: fontSize,
          color: color,
            fontWeight:
             isBold ? FontWeight.bold : FontWeight.normal,
            fontStyle:
              isItalic ? FontStyle.italic : FontStyle.normal,
        ),
      ),
    ),
  ),

      // Controles
      Expanded(
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text(
              "fontSize: ${fontSize.toInt()}",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Slider(
              value: fontSize,
              min: 10,
              max: 60,
              onChanged: (value) {
                setState(() {
                  fontSize  = value;
                });
              },
            ),

            const SizedBox(height: 0),
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

                const SizedBox(width: 10),
                Switch(
                  value: isBold,
                  onChanged: (value) {
                    setState(() {
                      isBold = value;
                    });
                  },
                ),

                const SizedBox(width: 10),
                const Text(
                  "Italic:",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(width: 5),
                Switch(
                  value: isItalic,
                  onChanged: (value) {
                    setState(() {
                      isItalic = value;
                    });
                  },
                ),
              ],
            ),

            const SizedBox(height: 10),
            Center(
              child: ToggleButtons(
                isSelected:  [
                  alignmentIndex == 0,
                  alignmentIndex == 1,
                  alignmentIndex == 2,
                  ],
                onPressed: (index) {
                  setState(() {
                    alignmentIndex = index;
                  });
                },
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
                  onPressed: () {
                    setState(() {
                      color = Colors.red;
                    });
                  },
                  icon: const Icon(
                    Icons.circle,
                    size: 50,
                  ),
                  color: Colors.red,
                ),

                IconButton(
                  onPressed: () {
                    setState(() {
                      color = Colors.black;
                    });
                  },
                  icon: const Icon(
                    Icons.circle,
                    size: 50,
                  ),
                  color: Colors.black87,
                ),

                IconButton(
                  onPressed: () {
                    setState(() {
                      color = Colors.green;
                    });
                  },
                  icon: const Icon(
                    Icons.circle,
                    size: 50,
                  ),
                  color: Colors.green,
                ),

                IconButton(
                  onPressed: () {
                    setState(() {
                      color = Colors.blue;
                    });
                  },
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