
import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround, // start, end, spaceAround, spaceBetween, spaceEvenly
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text("Adı: "),
          Text("Umut Ocak")
        ],
      ),
    );
  }
}