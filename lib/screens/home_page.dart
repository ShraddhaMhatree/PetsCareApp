import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(int.parse("0xFFD5E2E3")),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Hi, Ferran',
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                    padding: EdgeInsets.only(right: 60, top: 5),
                    child: Text(
                      'Check out the new products, groups, events, places and more!',
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    )),
                SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15.0),
                      topLeft: Radius.circular(15.0),
                      bottomLeft: Radius.circular(15.0),
                      bottomRight: Radius.circular(15.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black38,
                          spreadRadius: 0,
                          blurRadius: 5.0),
                    ],
                  ),
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 15,
                      ),
                      Image.asset(
                        'assets/images/dog1.png',
                        height: 65.0,
                        width: 65.0,
                      ),
                      Expanded(
                        child: Padding(
                            padding: EdgeInsets.only(left: 10, top: 5),
                            child: Text(
                              'Lola is lost in your neighborhood! Help us find her!!',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            )),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'WALK GROUPS',
                      style: TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Container(
                    height: 300,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        _listItem(),
                        _listItem(),
                        _listItem(),
                        _listItem(),
                      ],
                    )),
                   SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'NEW PRODUCTS',
                      style: TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                  Container(
                    height: 300,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        _listItem(),
                        _listItem(),
                        _listItem(),
                        _listItem(),
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container _listItem() {
    return Container(
      width: 300,
      padding: EdgeInsets.only(right: 20),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        // elevation: 2,
        margin: EdgeInsets.only(top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              child: Image.asset(
                "assets/images/WalkGrp.png",
                height: 120,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Meet our lovely dogs walking with us!',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.location_on,
                          size: 20, color: Colors.grey.shade700),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        'Valencia Spain',
                        style: TextStyle(color: Colors.grey.shade700),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.people, size: 20, color: Colors.grey.shade700),
                      SizedBox(
                        width: 6,
                      ),
                      Text('8 members',
                          style: TextStyle(color: Colors.grey.shade700))
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.person, size: 20, color: Colors.grey.shade700),
                      SizedBox(
                        width: 6,
                      ),
                      Text('rganized by Laura',
                          style: TextStyle(color: Colors.grey.shade700))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
