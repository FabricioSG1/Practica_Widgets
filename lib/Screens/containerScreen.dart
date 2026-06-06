import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  double width = 150;
  double height = 150;
  double borderRadius = 20;
  Color color = Colors.amber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pantalla Container"),
        backgroundColor: const Color.fromARGB(255, 119, 119, 119),
        foregroundColor: Color.fromARGB(255, 231, 231, 231),
      ),
      body: Column(
        children: [
          Expanded(child: Center(
            child: SizedBox(
              width: width,
              height: height,
              child: Container(
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
              child: Center(
                child: Text("Container"),
                ),
              ),
            ),
          )
        ),

          Expanded(child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Ancho (Width): ${width.toInt()} px"),
                Slider(
                  value: 150, 
                  min: 0,
                  max: 205,
                  activeColor: Colors.blue,
                  onChanged: (value){
                    setState(() {
                    width = value;  
                    });
                  },
                  ),

                Text("Alto (Height): ${height.toInt()} px"),
                Slider(
                  value: 150, 
                  min: 0,
                  max: 205,
                  activeColor: Colors.blue,
                  onChanged: (value){
                    setState(() {
                      height = value;
                    });
                  }
                  ),

                  Text("BorderRadius: ${borderRadius.toInt()} px"),
                  Slider(
                  value: 20, 
                  min: 0,
                  max: 100,
                  activeColor: Colors.blue,
                  onChanged: (value){
                    setState(() {
                      borderRadius = value;
                    });
                  }
                  ),

                Text("Color: "),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: (){
                        setState(() {
                          color = Colors.red;
                        });
                      },
                      icon: Icon(Icons.circle, size:50),
                      color: Colors.red,
                      ),
                      IconButton(
                      onPressed: (){
                        setState(() {
                          color = Colors.yellow;
                        });
                      },
                      icon: Icon(Icons.circle, size:50),
                      color: Colors.yellow,
                      ),
                      IconButton(
                      onPressed: (){
                        setState(() {
                          color = Colors.green;
                        });
                      },
                      icon: Icon(Icons.circle, size:50),
                      color: Colors.green,
                      ),
                      IconButton(
                      onPressed: (){
                        setState(() {
                          color = Colors.blue;
                        });
                      },
                      icon: Icon(Icons.circle, size:50),
                      color: Colors.blue,
                      ),
                  ],)
              ],
            ),
          ))
        ],
        )
    );
  }
}