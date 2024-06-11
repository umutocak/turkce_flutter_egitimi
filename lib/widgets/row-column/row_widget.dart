import 'package:flutter/material.dart';
import 'package:flutter_egitimi/core/base/base_state.dart';

class RowWidget extends StatelessWidget with BaseState {
  RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          title: Text("Row Kullanımı", style: TextStyle(color: colorConstant.white)),
          backgroundColor: colorConstant.maroon,
          iconTheme: IconThemeData(color: colorConstant.white),
          elevation: 0),
      body: const Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround, // start, end, spaceAround, spaceBetween, spaceEvenly
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Text("Name: ", style: TextStyle(fontWeight: FontWeight.bold)), Text("Umut Ocak")],
        ),
      ),
    );
  }
}
