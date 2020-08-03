import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        color: Color(int.parse("0xFFD5E2E3")),
        child: Center(
          child: Text('Fav'),
        ),
      )),
    );
  }
}
