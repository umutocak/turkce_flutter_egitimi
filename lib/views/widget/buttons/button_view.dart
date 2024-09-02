import 'package:flutter/material.dart';
import 'package:flutter_egitimi/core/base/base_state.dart';

class ButtonView extends StatelessWidget with BaseState {
  ButtonView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// ? State içerisinden colorConstant.colorName şeklinde erişerek kullanabiliriz.
      /// ! Kullanım sağladığınız yerde const ifadesini kullanamazsınız.
      appBar: AppBar(
        title: Text("Button View", style: TextStyle(color: colorConstant.warm)),
        backgroundColor: colorConstant.maroon,
        //? Geri butonunun rengini buradan ayarlayabilirsin.
        iconTheme: IconThemeData(color: colorConstant.warm),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: const Text('Common Buttons', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: const Text('Flutter common buttons'),
              leading: Icon(Icons.radio_button_checked, color: colorConstant.warm),
              trailing: const Icon(Icons.arrow_right_alt),
              onTap: () => Navigator.pushNamed(context, '/commonbutton'),
            ),
          ],
        ),
      ),
    );
  }
}
