import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_egitimi/views/home/home_view.dart';
import 'package:flutter_egitimi/views/widgets/images/image_view.dart';
import 'package:flutter_egitimi/views/widgets/widget_view.dart';
import 'package:flutter_egitimi/widgets/center/center_widget.dart';
import 'package:flutter_egitimi/widgets/circle_avatar/circle_avatar_widget.dart';
import 'package:flutter_egitimi/widgets/circular_progress_indicator/circular_proogress_indicator.dart';
import 'package:flutter_egitimi/widgets/image/cached_network_image_widget.dart';
import 'package:flutter_egitimi/widgets/image/image_widget.dart';
import 'package:flutter_egitimi/widgets/richText/rich_text_widget.dart';
import 'package:flutter_egitimi/widgets/row-column/column_widget.dart';
import 'package:flutter_egitimi/widgets/row-column/row_widget.dart';
import 'package:flutter_egitimi/widgets/text/text_widget.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)..badCertificateCallback = (X509Certificate cert, String host, int port) => true;
  }
}

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Türkçe Flutter Eğitimi',
      /** 
       * ? useMaterial3: true => Material 3 aktif edebilirsiniz.
       * ? colorScheme => Uygulama geneli renk bütünlüğünü ayarlamanıza olanak sağlar.
       */
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff524C42)), useMaterial3: true),
      debugShowCheckedModeBanner: false,
      /** 
       * todo: Bu Comments tipini çalıştırmak için Better comments kurulumu yapmalısınız.
       * * NAMED ROUTE Kullanımı
       * * Named route ile, View sayfalarınızı isimlendirerek doğrudan route ederken vermiş olduğunuz
       * * isme göre yönlendirme yapabilirsiniz.
       * ? Named route kullanımında initial route tanımlaması yapılmaktadır. 
       * ! Bu nedenle home: const HomeView() => kaldırılmalıdır. İkisi aynı anda kullanılmaz.
       */
      initialRoute: '/',
      /** 
       * * Bu kısma route yani yönlendirme yapacağınız sayfaları tanımlamalısınız.
       * ! '/' => Uygulama açılış sayfası anlamına gelir.
       */
      routes: {
        '/': (context) => const HomeView(),
        '/Image': (context) => ImageView(),
        '/widgets': (context) => WidgetView(),
        '/imageWidget': (context) => ImageWidget(),
        '/cachedImage': (context) => CachedNetworkImageWidget(),
        '/rowWidget': (context) => RowWidget(),
        '/columnWidget': (context) => ColumnWidget(),
        '/rich-text': (context) => RichTextWidget(),
        '/circle-avatar': (context) => CircleAvatarWidget(),
        '/center': (context) => CenterWidget(),
        '/text': (context) => TextWidget(),
        '/circular-progress': (context) => CircularProgressIndicatorWidget(),
      },
    );
  }
}
