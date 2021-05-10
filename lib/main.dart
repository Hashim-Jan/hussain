import 'package:flutter/material.dart';
import 'package:two_screen/screens/about_us_screen.dart';
import 'package:two_screen/screens/buyer_screen.dart';
import 'package:two_screen/screens/create_gig_screen.dart';
import 'package:two_screen/screens/notification_screen.dart';
import 'package:two_screen/screens/popular_service_provider.dart';
import 'package:two_screen/screens/profile_screen.dart';
import 'package:two_screen/screens/seller_screen.dart';
import 'package:two_screen/screens/service_provider_screen.dart';
import 'package:two_screen/screens/worker_screen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'notification_screen',
      routes: {
        'seller_screen':(context)=>SellerScreen(),
        'buyer_screen':(context)=>BuyerScreen(),
        'worker_screen' : (context)=>WorkerScreen(),
        'profile_screen' : (context)=>ProfileScreen(),
        'create_gig_screen' : (context)=>CreateGigScreen(),
        'service_provider_screen' : (context)=>ServiceProviderScreen(),
        'popular_service_provider_screen' : (context)=>PopularServiceProviderScreen(),
        'about_us_screen' : (context)=>AboutUsScreen(),
        'notification_screen' : (context)=>NotificationScreen(),
      },
    );
  }
}
