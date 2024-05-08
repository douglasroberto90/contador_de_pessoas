import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int contador = 0;

  void incrementar() {
    if (contador < 15) {
      setState(() {
        contador++;
      });
    }
  }

  void decrementar() {
    if (contador > 0) {
      setState(() {
        contador--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/fundo.jpg"))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  contador >= 15 ? "Lotado" : "Pode entrar!",
                  style: const TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  contador.toString(),
                  style: TextStyle(
                      fontSize: 80,
                      color: contador >= 15 ? Colors.red : Colors.white),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ElevatedButton(
                      onPressed: incrementar,
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(100, 100),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        backgroundColor: contador >= 15
                            ? Colors.white.withOpacity(0.2)
                            : Colors.white,
                      ),
                      child: const Text("Entrou", style: TextStyle(color: Colors.black),)),
                ),
                //SizedBox(height: 20,width: 20,),
                //Container(height: 20,width: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ElevatedButton(
                      onPressed: decrementar,
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(100, 100),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        backgroundColor: contador <= 0
                            ? Colors.white.withOpacity(0.2)
                            : Colors.white,
                      ),
                      child: const Text("Saiu", style: TextStyle(color: Colors.black),)),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
