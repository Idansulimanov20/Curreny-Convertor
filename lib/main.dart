import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:indian1/currency_convertor_page.dart';
import 'currency_convertor_page_cuppartino.dart';
import 'my_widget.dart';
void main () {
  runApp(const MyCupertinoApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:CurrencyConvertorMaterialPage()
    );
  }
}
class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
        home:CurrencyConvertorPageCuppartino()
    );
  }
}

class MyWidgetApp extends StatelessWidget {
  const MyWidgetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyWidget() ,
    );
  }
}

