import 'package:flutter/material.dart';
// import 'package:flutter_egitimi/widgets/center/center_widget.dart';
// import 'package:flutter_egitimi/widgets/circle_avatar/circle_avatar_widget.dart';
import 'package:flutter_egitimi/widgets/image/image_widget.dart';
// import 'package:flutter_egitimi/widgets/listtile/listtile_widget.dart';
// import 'package:flutter_egitimi/widgets/richText/rich_text_widget.dart';
// import 'package:flutter_egitimi/widgets/row-column/row_widget.dart';
// import 'package:flutter_egitimi/widgets/text/text_widget.dart';
// import 'widgets/row-column/column_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ImageWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}
