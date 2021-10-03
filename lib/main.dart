import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/home_page.dart';
import 'package:provider_app/mydata.dart';
import 'package:provider_app/scroll_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>MyData())
      ],
      child: MaterialApp(
        home: ScrollPage(),
      ),
    );
  }
}

