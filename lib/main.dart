// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, camel_case_types, avoid_print

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: contador(),
  ));
}

class contador extends StatefulWidget {
  const contador({ Key? key }) : super(key: key);

  @override
  _contadorState createState() => _contadorState();
}

class _contadorState extends State<contador> {
  int count = 0;

  void decrement() {
    if(count > 0)
    {
      setState((){
      count --;
      });
      print(count);
    }
  }

  void increment() {
    if(count < 25)
    {
      setState((){
      count ++;
      });
      print(count);
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/restaurant.jpg"),
                fit: BoxFit.cover)
          ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Text(count < 25? "Pode entrar" : "Lotado", 
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255), 
                  fontSize: 60)
                ),
            Text(count.toString(), 
              style: TextStyle(
                color: Color.fromARGB(255, 251, 255, 0),
                fontSize: 40)
                ),
            Row( mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                    fixedSize: Size(100, 60),
                    side: BorderSide(color: Color.fromARGB(255, 255, 0, 0),width: 3.0)
                  ),
                onPressed: decrement, 
                child: Text("Saiu", 
                  style: TextStyle(color:Color.fromARGB(255, 255, 0, 0),
                  fontSize: 25)
                  )
                ),
                SizedBox(width: 60),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                    fixedSize: Size(100, 60), 
                    side: BorderSide(color: Color.fromARGB(255, 81, 255, 0),width: 3.0,)
                  ),
                onPressed: increment, 
                child: Text("Entrou", 
                  style: TextStyle(color:Color.fromARGB(255, 81, 255, 0),
                  fontSize: 25)
                  )
                )
            ],)
        ])
      ),
    ),
  );
  }
}