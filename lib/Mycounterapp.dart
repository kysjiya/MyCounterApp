import 'package:flutter/material.dart';

class Mycounterapp extends StatefulWidget {
  const Mycounterapp({super.key});

  @override
  State<Mycounterapp> createState() => _MycounterappState();
}

class _MycounterappState extends State<Mycounterapp> {
  int c = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(c.toString(), style: TextStyle(fontSize: 28)), 
            
            ElevatedButton(
              onPressed: () {
                setState(() {
                  c++;
                });
              },
              child: Text("Increment"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: (){
              setState(() {
                c = 0;
              });
            },
            child: Text("Reset"),
            )
          ],
        )),
      ),
    );
  }
}
