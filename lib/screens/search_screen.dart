import 'package:flutter/material.dart';
import 'package:pets_app/helpers/SizeConfig.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                child: Text(
                  'Find anything',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: double.infinity,
                child: Text(
                  'you need for your pets',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: GridView.count(
                  childAspectRatio: MediaQuery.of(context).size.width /
                      (MediaQuery.of(context).size.height / 2),
                  crossAxisCount: 2,
                  padding: EdgeInsets.all(SizeConfig.safeBlockHorizontal * 3),
                  crossAxisSpacing: SizeConfig.safeBlockHorizontal * 4,
                  mainAxisSpacing: SizeConfig.safeBlockHorizontal * 3,
                  children: <Widget>[
                    _listItem(Color(int.parse("0xFF1A2E35")), 'Vet',
                        'assets/images/dog1.png'),
                    _listItem(Color(int.parse("0xFFC9E193")), 'Places to eat',
                        'assets/images/dog1.png'),
                    _listItem(Color(int.parse("0xFF00B7B7")), 'Places to walk',
                        'assets/images/dog1.png'),
                    _listItem(Color(int.parse("0xFFB6DDDF")), 'Spas and Salons',
                        'assets/images/dog1.png'),
                    _listItem(Color(int.parse("0xFFC9E193")),
                        'Shops and Products', 'assets/images/dog1.png'),
                    _listItem(Color(int.parse("0xFF15464E")), 'Walk groups',
                        'assets/images/dog1.png'),
                    _listItem(Color(int.parse("0xFFB6DDDF")),
                        'Animals in adoption', 'assets/images/dog1.png'),
                    _listItem(Color(int.parse("0xFF00B7B7")), 'Dogs',
                        'assets/images/dog1.png'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Stack _listItem(Color bgColor, String title, String image) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: 10,
          left: 0,
          right: 0,
          child: Container(
            height: 100,
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(15.0),
                topLeft: Radius.circular(15.0),
                bottomLeft: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0),
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.black38, spreadRadius: 0, blurRadius: 5.0),
              ],
            ),
          ),
        ),
        Positioned(
            right: 5,
            // bottom: 30,

            child: Image.asset(
              image,
              height: 110,
            )),
        Positioned(
          left: 10,
          bottom: 50,
          child: Container(
            width: 50,
            child: Text(
              title,
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
