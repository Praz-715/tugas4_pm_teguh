import 'package:flutter/material.dart';

class Drawernya extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountEmail: Text("teguhpraz715@gmail.com"),
            accountName: Text("Teguh Prasetyo"),
            currentAccountPicture: CircleAvatar(
              child: Text(
                "Th",
                style: TextStyle(fontSize: 40),
              ),
            ),
          )
        ],
      ),
    );
  }
}
