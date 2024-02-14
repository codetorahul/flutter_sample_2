import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MiCard extends StatelessWidget {
  const MiCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.green.shade900,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            maxRadius: 50,
            backgroundImage: AssetImage("images/user.png"),
          ),
          Text(
            "Rahul Gupta",
            style: TextStyle(
                fontSize: 30.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: "SingleDay"),
          ),
          Text(
            "Flutter Developer",
            style: TextStyle(
                fontSize: 25.0, color: Colors.white, fontFamily: "GreatVibes"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              child: ListTile(
                leading: Icon(
                  Icons.call,
                  color: Colors.green,
                ),
                title: TextField(
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                    color: Colors.green,
                  ),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      hintText: "Enter Mobile Number",
                      hintStyle: TextStyle(color: Colors.green),
                      border: InputBorder.none,
                      constraints: BoxConstraints(maxHeight: 20.0)),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              child: ListTile(
                leading: Icon(
                  Icons.mail,
                  color: Colors.green,
                ),
                title: TextField(
                  style: TextStyle(
                    color: Colors.green,
                  ),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      hintText: "Enter Email",
                      hintStyle: TextStyle(
                        color: Colors.green,
                      ),
                      border: InputBorder.none,
                      constraints: BoxConstraints(maxHeight: 20.0)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
