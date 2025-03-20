import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/login');
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile Management'),
              onTap: () {
                Navigator.pushNamed(context, '/profile');
              },
            ),
            ListTile(
              leading: Icon(Icons.description),
              title: Text('Challan Information'),
              onTap: () {
                Navigator.pushNamed(context, '/challan_info');
              },
            ),
            ListTile(
              leading: Icon(Icons.payment),
              title: Text('Online Payment'),
              onTap: () {
                Navigator.pushNamed(context, '/payment');
              },
            ),
            ListTile(
              leading: Icon(Icons.history),
              title: Text('Transaction History'),
              onTap: () {
                Navigator.pushNamed(context, '/history');
              },
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notifications'),
              onTap: () {
                Navigator.pushNamed(context, '/notifications');
              },
            ),
          ],
        ),
      ),
    );
  }
}
