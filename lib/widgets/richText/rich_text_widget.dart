import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: false, title: const Text("Rich Text Kullanımı"), backgroundColor: Colors.red, elevation: 0),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Rich Text kullanımı
            RichText(
              text: const TextSpan(
                text: 'FirstName: ',
                style: TextStyle(color: Colors.grey),
                children: [
                  TextSpan(text: ' Umut', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            const SizedBox(width: 15), // İki ayrı yazı arasında boşluk vermek için kullandık
            RichText(
              text: const TextSpan(
                text: 'LastName: ',
                style: TextStyle(color: Colors.grey),
                children: [
                  TextSpan(text: ' Ocak', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
