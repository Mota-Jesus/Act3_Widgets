import 'package:flutter/material.dart';

class PantallaCuatro extends StatefulWidget {
  const PantallaCuatro({Key? key}) : super(key: key);

  @override
  State<PantallaCuatro> createState() => _PantallaCuatroState();
}

class _PantallaCuatroState extends State<PantallaCuatro> {
  double padValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla Cuatro',
            style: TextStyle(color: Colors.white, fontSize: 32)),
        backgroundColor: Color(0xffa1d759),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orangeAccent,
                ),
                child: const Text('Change padding'),
                onPressed: () {
                  setState(() {
                    padValue = padValue == 0.0 ? 100.0 : 0.0;
                  });
                },
              ),
              Text('Padding = $padValue'),
              AnimatedPadding(
                padding: EdgeInsets.all(padValue),
                duration: const Duration(seconds: 2),
                curve: Curves.easeInOut,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 4,
                  color: Colors.orangeAccent,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Regresar'),
            ),
          ),
        ],
      ),
    );
  }
}
