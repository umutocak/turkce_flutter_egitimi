import 'package:flutter/material.dart';
import 'package:flutter_egitimi/core/base/base_state.dart';

class ColumnWidget extends StatelessWidget with BaseState {
  ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          title: Text("Column Kullanımı", style: TextStyle(color: colorConstant.white)),
          backgroundColor: colorConstant.maroon,
          iconTheme: IconThemeData(color: colorConstant.white),
          elevation: 0),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // start, end, spaceAround, spaceBetween, spaceEvenly
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Name", style: TextStyle(fontWeight: FontWeight.bold)),
            Text("Umut Ocak")
          ], // Column : Birden fazla child alır. İçerisinde bulundurduğu verileri dikey görünümde sıralar.
        ),
      ),
    );
  }
}
