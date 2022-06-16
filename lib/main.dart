import 'package:flutter/material.dart';
import 'package:http_request/models/GetModel.dart';
import 'package:http_request/pages/GetPage.dart';
import 'package:http_request/pages/PostPage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
        create: (context) => HttpProvider(),
        child: GetPage(),),
    );
  }
}

