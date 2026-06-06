import "package:aplicacion_2/Screens/main_screen.dart";
import "package:flutter/material.dart";

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Appcito",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed
        (seedColor: const Color.fromARGB(255, 68, 78, 33))
      ),
      home: MainScreen()
    );
  }
}