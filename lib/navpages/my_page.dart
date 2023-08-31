import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/snakeeyes.jpeg"),
              radius: 50.0,
            ),
          ),
          Divider(
            height: 60.0,
          ),
          Text(
            "NAME",
            style: TextStyle(color: Colors.black, letterSpacing: 2.0),
          ),
          SizedBox(height: 10.0),
          Text(
            "SnakeEyes",
            style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 30.0),
          SizedBox(height: 10.0),
          Row(
            children: <Widget>[
              Icon(
                Icons.phone,
                color: Colors.black,
              ),
              SizedBox(width: 10.0),
              /**/
              Text(
                "+977-9845131342",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                  letterSpacing: 1.0,
                ),
              )
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.email,
                color: Colors.black,
              ),
              SizedBox(width: 10.0),
              /**/
              Text(
                "snakeeyes@ninja.com",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                  letterSpacing: 1.0,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
