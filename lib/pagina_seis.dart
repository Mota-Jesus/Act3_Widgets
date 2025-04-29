import 'dart:ui';

import 'package:flutter/material.dart';

class PantallaSeis extends StatelessWidget {
  const PantallaSeis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla Seis',
            style: TextStyle(color: Colors.white, fontSize: 32)),
        backgroundColor: Color(0xff154db5),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        // Wrap the Column with SingleChildScrollView
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Stack(
              children: <Widget>[
                Text(
                  '0' * 1058,
                  style: const TextStyle(
                    color: Colors.green,
                  ),
                ),
                Center(
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 4.0,
                        sigmaY: 4.0,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        width: 250,
                        height: 250,
                        child: const Text('Blur'),
                      ),
                    ),
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
      ),
    );
  }
}
