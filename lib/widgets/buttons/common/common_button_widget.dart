import 'package:flutter/material.dart';
import 'package:flutter_egitimi/core/base/base_state.dart';

class CommonButtonWidget extends StatelessWidget with BaseState {
  CommonButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          title: Text("Common Button Kullanımı", style: TextStyle(color: colorConstant.warm)),
          backgroundColor: colorConstant.maroon,
          iconTheme: IconThemeData(color: colorConstant.warm),
          elevation: 0),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Common buttonlar ile istediğiniz işlemi uygulayabilirsiniz'),
            const SizedBox(height: 15),
            ElevatedButton(onPressed: (){}, child: const Text('Elevated')),
          FilledButton(onPressed: (){}, child: const Text('Filled')),
          FilledButton.tonal(
              onPressed: (){}, child: const Text('Filled Tonal')),
          OutlinedButton(onPressed: (){}, child: const Text('Outlined')),
          TextButton(onPressed: (){}, child: const Text('Text')),

          ],
        ),
      ),
    );
  }
}
