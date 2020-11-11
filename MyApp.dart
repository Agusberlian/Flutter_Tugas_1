import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(('E-Rupiah Home')),
          leading: Icon(
            Icons.search,
            color: Colors.white,
            size: 25,
          ),
          backgroundColor: Colors.redAccent,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.favorite, color: Colors.white,)),
            IconButton(icon: Icon(Icons.mail, color: Colors.white,)),
            IconButton(icon: Icon(Icons.notifications, color: Colors.white,))
          ],
        ),
        body: Myimg(),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem> [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text ('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet),
              title: Text('Balance'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              title: Text('Akun'),
            ),
          ],
          selectedItemColor: Colors.redAccent,
        ),
      ),
    );
  }
}

class Myimg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image.network("https://images.glints.com/unsafe/1024x0/glints-dashboard.s3.amazonaws.com/company-logo/674af658c39314f979187d34bfc21475.jpg"),
          Text("Logo E-Rupiah", style: TextStyle(color: Colors.redAccent, fontSize: 25, fontFamily: 'PingFang TC', fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}
