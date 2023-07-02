
import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start, // start, end, spaceAround, spaceBetween, spaceEvenly
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text("Yazı 1"),
          Text("Yazı 2")
        ], // Column : Birden fazla child alır. İçerisinde bulundurduğu verileri dikey görünümde sıralar.
      ),
    );
  }
}