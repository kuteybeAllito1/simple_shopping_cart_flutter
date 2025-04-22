import 'package:flutter/material.dart';
import 'package:lerant/Home.dart';
import 'package:provider/provider.dart';
import 'Model/Cart.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) {
      return Cart();
    },
    child: MaterialApp(
    debugShowCheckedModeBanner: false,
    debugShowMaterialGrid: false,
      theme:ThemeData(
        
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.grey,
          iconTheme: IconThemeData(
            color: Colors.grey[200],
            
          ),
          titleTextStyle: TextStyle(
            fontSize: 30,
            fontWeight:FontWeight.bold ,
            color: Colors.white
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
            side: BorderSide(
              color: Colors.black,
              width: 4,
            ),
          ),
        )
      ) ,
      home: Home(),
    ),);
  }
}
