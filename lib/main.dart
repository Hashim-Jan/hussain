import 'package:flutter/material.dart';
import 'package:two_screen/screens/buyer_screen.dart';
import 'package:two_screen/screens/create_gig_screen.dart';
import 'package:two_screen/screens/profile_screen.dart';
import 'package:two_screen/screens/seller_screen.dart';
import 'package:two_screen/screens/worker_screen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'create_gig_screen',
      routes: {
        'seller_screen':(context)=>SellerScreen(),
        'buyer_screen':(context)=>BuyerScreen(),
        'worker_screen' : (context)=>WorkerScreen(),
        'profile_screen' : (context)=>ProfileScreen(),
        'create_gig_screen' : (context)=>CreateGigScreen(),
      },
    );
  }
}
