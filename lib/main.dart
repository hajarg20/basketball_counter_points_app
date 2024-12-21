import 'dart:ui_web';

import 'package:flutter/material.dart';

void main() {
  runApp(pointsApp());
}

class pointsApp extends StatefulWidget {
  const pointsApp({super.key});

  @override
  State<pointsApp> createState() => _pointsAppState();
}

class _pointsAppState extends State<pointsApp> {
  int teamApoints = 0;

  int teamBpoints = 0;

  void AddOnePoint() {
    print('add one point');
  }

  @override
  Widget build(BuildContext context) {
    var verticalDivider = VerticalDivider(
      // Add vertical divider here
      color: Colors.grey,
      thickness: 2,
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent,
          title: Text('points counter'),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 500,
                  child: Column(
                    children: [
                      Text(
                        'Team A',
                        style: TextStyle(
                          fontSize: 40,
                        ),
                      ),
                      Text(
                        '$teamApoints',
                        style: TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepOrangeAccent,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamApoints++;
                          });
                          print(teamApoints);
                        },
                        child: Text(
                          'Add 1 point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Spacer(
                        flex: 6,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepOrangeAccent,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamApoints += 2;
                          });
                          print(teamApoints);
                        },
                        child: Text(
                          'Add 2 points',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Spacer(
                        flex: 6,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepOrangeAccent,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamApoints += 3;
                            print(teamApoints);
                          });
                        },
                        child: Text(
                          'Add 3 point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Spacer(
                        flex: 12,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 300, child: verticalDivider),
                SizedBox(
                  height: 500,
                  child: Column(
                    children: [
                      Text(
                        'Team B',
                        style: TextStyle(
                          fontSize: 40,
                        ),
                      ),
                      Text(
                        '$teamBpoints',
                        style: TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepOrangeAccent,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamBpoints++;
                          });
                          print(teamBpoints);
                        },
                        child: Text(
                          'Add 1 point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Spacer(
                        flex: 6,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepOrangeAccent,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamBpoints += 2;
                          });
                          print(teamBpoints);
                        },
                        child: Text(
                          'Add 2 point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Spacer(
                        flex: 6,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepOrangeAccent,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamBpoints += 3;
                          });
                          print(teamBpoints);
                        },
                        child: Text(
                          'Add 3 point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Spacer(
                        flex: 12,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrangeAccent,
                minimumSize: Size(100, 50),
              ),
              onPressed: () {
                setState(() {
                  teamBpoints = 0;
                  teamApoints = 0;
                  print(teamBpoints);
                });
              },
              child: Text(
                'RESET',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
