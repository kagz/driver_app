import 'package:driver_app/ui/page_home.dart';
import 'package:driver_app/ui/page_transactions.dart';
import 'package:flutter/material.dart';
import 'package:driver_app/ui/page_splash.dart';
void main() {


  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI Collections',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
     // home: CollectionApp(),

      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/transactions': (context) => RecentTransactionsPage(),
     
      },
    );
  }
}



// class CollectionApp extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {

//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         theme: ThemeData(
//           primaryColor: Theme.of(context).primaryColor,
//         ),
//         home: SplashScreen()
//     );
//   }
// }





