import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  Color? textColor;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    textColor = Theme.of(context).primaryColor; // עדכון צבע בהתאם לנושא
  }

  @override
  Widget build(BuildContext context) {
    return Text("Hello, Flutter!", style: TextStyle(color: textColor));
  }
}
