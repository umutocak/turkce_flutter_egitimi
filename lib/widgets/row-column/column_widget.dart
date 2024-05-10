import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: false, title: const Text("Column Kullanımı"), backgroundColor: Colors.red, elevation: 0),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // start, end, spaceAround, spaceBetween, spaceEvenly
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Name",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text("Umut Ocak")
          ], // Column : Birden fazla child alır. İçerisinde bulundurduğu verileri dikey görünümde sıralar.
        ),
      ),
    );
  }
}
