import 'package:flutter/material.dart';
import 'package:flutter_egitimi/core/base/base_state.dart';

class ContainerWidget extends StatelessWidget with BaseState {
  ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          title: Text("Container Kullanımı", style: TextStyle(color: colorConstant.warm)),
          backgroundColor: colorConstant.maroon,
          iconTheme: IconThemeData(color: colorConstant.warm),
          elevation: 0),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Container ile istediğiniz widgetı sarmalayabilirsiniz. Decoration kısmı ile container üzerine süsleme yapabilirsiniz.'),
            const SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(
                //? Bu kısım, kenarlık ekler.
                border: Border.all(color: colorConstant.maroon),
              ),
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Text('Bu bir container'),
              ),
            ),
            const SizedBox(height: 15),
            const Text('Bu kısımda, gölgelendirme ve kenarlıkları yuvarlama işlemi yapılmuştır. BoxShadow ve BorderRadius kullanılmıştır.'),
            const SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: colorConstant.maroon),
                  //? Shadow yani gölge eklemek için kullanılır
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 5,
                      blurRadius: 2,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  //? Yuvarlak hale getirir.
                  borderRadius: BorderRadius.circular(10)),
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Text('Bu bir container'),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: colorConstant.maroon),
                  //? Yuvarlak hale getirir.
                  borderRadius: BorderRadius.circular(10)),
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Text('Bu bir container'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
