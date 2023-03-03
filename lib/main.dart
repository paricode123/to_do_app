import 'package:flutter/material.dart';
import 'package:pandatodo/screens/introduction.dart';
import 'package:pandatodo/provider/App_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_)=>todoProvider()),
        ],
            child: MaterialApp(
        debugShowCheckedModeBanner: false,
      home: Intro(),
    ),
    );
  }
}








