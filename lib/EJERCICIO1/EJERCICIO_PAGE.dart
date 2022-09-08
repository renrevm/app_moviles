import 'package:flutter/material.dart';

class EjercicioBoton extends StatefulWidget {
  const EjercicioBoton({key});

  @override
  State<EjercicioBoton> createState() => _EjercicioBotonState();
}

class _EjercicioBotonState extends State<EjercicioBoton> {
  int opc = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gonzalo Chupalo'),
        backgroundColor: Color.fromARGB(255, 202, 47, 0),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: 200,
            color: Colors.lightBlue.shade100,
            child: IndexedStack(
              alignment: Alignment.center,
              index: opc,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.yellow,
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 50,
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      opc = 0;
                    });
                  },
                  child: Text('Color Rojo'),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      opc = 1;
                    });
                  },
                  child: Text('Color Verde'),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      opc = 2;
                    });
                  },
                  child: Text('Color Amarillo'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
