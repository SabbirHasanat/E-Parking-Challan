import 'package:flutter/material.dart';
import 'login.dart';
import 'register.dart';
import 'profile.dart';
import 'challan_info.dart';
import 'payment.dart';
import 'history.dart';
import 'notifications.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Parking Challan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/profile': (context) => ProfilePage(),
        '/challan_info': (context) => ChallanInfoPage(),
        '/payment': (context) => PaymentPage(),
        '/history': (context) => HistoryPage(),
        '/notifications': (context) => NotificationsPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
