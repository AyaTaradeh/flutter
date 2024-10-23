
  // main.dart
import 'package:flutter/material.dart';
import 'widgets/info_column.dart';
import 'widgets/icon_column.dart';
import 'widgets/settings_item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0), 
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          flexibleSpace: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    '1:31',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Row(
                    children: [
                      Icon(Icons.wifi, color: Colors.black),
                      SizedBox(width: 8),
                      Icon(Icons.battery_full, color: Colors.black),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          
          Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      'https://via.placeholder.com/150'), 
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mausam Rayamajhi',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'A trendsetter',
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        InfoColumn(title: '846', subtitle: 'Collect'),
                        InfoColumn(title: '51', subtitle: 'Attention'),
                        InfoColumn(title: '267', subtitle: 'Track'),
                        InfoColumn(title: '39', subtitle: 'Coupons'),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconColumn(icon: Icons.account_balance_wallet, label: 'Wallet'),
              IconColumn(icon: Icons.local_shipping, label: 'Delivery'),
              IconColumn(icon: Icons.message, label: 'Message', notificationCount: 2),
              IconColumn(icon: Icons.support_agent, label: 'Service'),
            ],
          ),
          SizedBox(height: 16),
          Expanded(
            child: ListView(
              children: [
                SettingsItem(
                  icon: Icons.location_on,
                  title: 'Address',
                  subtitle: 'Ensure your harvesting address',
                ),
                SettingsItem(
                  icon: Icons.lock,
                  title: 'Privacy',
                  subtitle: 'System permission change',
                ),
                SettingsItem(
                  icon: Icons.settings,
                  title: 'General',
                  subtitle: 'Basic functional settings',
                ),
                SettingsItem(
                  icon: Icons.notifications,
                  title: 'Notification',
                  subtitle: 'Take over the news in time',
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 5,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(icon: Icon(Icons.home), onPressed: () {}),
              IconButton(icon: Icon(Icons.search), onPressed: () {}),
              IconButton(icon: Icon(Icons.person), onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
