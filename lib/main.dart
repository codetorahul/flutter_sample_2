import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Lodu Lalit"),
          backgroundColor: Colors.red[900],
        ),
        body: HomePage(),
      ),
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: double.infinity,
          height: 30,
          color: Colors.teal,
        ),
        Container(
          width: 100,
          height: 30,
          color: Colors.red,
        ),
        Container(
          width: 100,
          height: 30,
          color: Colors.yellow,
        ),
        CircleAvatar(
          maxRadius: 50,
          //   child: Image(image: AssetImage("images/flower.jpeg"),),
          backgroundImage: AssetImage("images/flower.jpeg"),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Card(
            child: ListTile(
              leading: Icon(
                Icons.access_time_filled,
                size: 40.0,
                color: Colors.teal.shade900,
              ),
              title: Text("Gypsy@gmail.com"),
            ),
          ),
        )
      ],
    );
  }
}
