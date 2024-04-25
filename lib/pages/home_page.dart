import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int contador = 0;

  void incrementar(){
    setState(() {
      contador++;
    });
  }


  void decrementar(){
    setState(() {
      contador --;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Pode entrar",
                style: TextStyle(fontSize: 40),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(contador.toString(),style: TextStyle(fontSize: 80),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: incrementar, child: Text("Entrou")),
              ElevatedButton(onPressed: decrementar, child: Text("Saiu"))
            ],
          ),
        ],
      ),
    );
  }
}
