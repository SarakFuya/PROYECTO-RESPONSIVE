import 'package:flutter/material.dart';

class MyBox extends StatelessWidget {
  const MyBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(3.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Expanded(child: Image(image: AssetImage('assets/foto1.jpeg')),),
            Expanded(child: Image(image: AssetImage('assets/foto2.jpeg')),),
            Expanded(child: Image(image: AssetImage('assets/foto3.jpeg')),),
            Expanded(child: Image(image: AssetImage('assets/foto4.jpeg')),),
            Expanded(child: Image(image: AssetImage('assets/foto5.jpeg')),),
            Expanded(child: Image(image: AssetImage('assets/foto6.jpeg')),),
          ],
        )
    );
  }
}