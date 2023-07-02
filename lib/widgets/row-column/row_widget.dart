
import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: false, title: const Text("Row Kullanımı"), backgroundColor: Colors.red, elevation: 0),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround, // start, end, spaceAround, spaceBetween, spaceEvenly
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text("Name: ", style: TextStyle(fontWeight: FontWeight.bold),),
            Text("Umut Ocak")
          ],
        ),
      ),
    );
  }
}