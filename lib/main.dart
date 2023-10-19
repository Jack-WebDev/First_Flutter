import 'package:flutter/material.dart';

void main() => runApp(MyProfile());

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("WTC_ Profile"),
          centerTitle: true,
        ),
        body: Container(
          color: Colors.blue[200],
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('assets/profile.jpg'),
                  radius: 50,
                ),
                Divider(),
                Text(
                  "Name:",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(height: 5),
                Text("Jack",
                    style: TextStyle(fontSize: 40, fontFamily: 'Tilt')),
                SizedBox(height: 20),
                Text(
                  "Year:",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(height: 5),
                Text("2", style: TextStyle(fontSize: 40, fontFamily: 'Tilt')),
                SizedBox(height: 20),
                Row(
                  children: <Widget>[
                    Icon(Icons.email, color: Colors.white),
                    SizedBox(
                      width: 5,
                    ),
                    Text("jack@student.wethinkcode.co.za",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontFamily: 'Tilt',
                            fontWeight: FontWeight.w600))
                  ],
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    print("Clicked!");
                  },
                  child: Text("Update Details"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
