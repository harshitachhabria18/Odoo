import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Two Large Buttons Example',
    home: Scaffold(
      appBar: AppBar(
        // Remove the title from AppBar
        title: Text(''), // Empty Text widget to remove title
      ),
      body: Stack(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Positioned(
                top: 10,
                left: 20,
                child: Text(
                  'Welcome To Level Up Your Fitness',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Choose an Option',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Action for the first button
                  print('Trainer button pressed');
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  textStyle: TextStyle(fontSize: 20),
                ),
                child: Text('Trainer'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Action for the second button
                  print('User button pressed');
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  textStyle: TextStyle(fontSize: 20),
                ),
                child: Text('User'),
              ),
            ],
          ),
        ],
      ),
    ),
  ));
}