import 'package:bit01_task/task2_screen.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

late var apiData;

class TaskOne extends StatelessWidget {
  const TaskOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void getData () async {
      http.Response response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));

      if (response.statusCode == 200) {
        String data = response.body;
        apiData = jsonDecode(data);
        print(apiData);
        print(apiData.length);
        print(apiData[0]['title']);
      } else {
        print(response.statusCode);
      }
    }
    getData();

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('images/background.jpg'),fit: BoxFit.cover)
        ),
        padding: EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              '"Well, it\'s finger\nlickin\' good"',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0),
            Text(
              'Don\'t know what to eat? Take a picture, we\'ll suggest things to cook with your ingredients',
              style: TextStyle(fontSize: 12.0),
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.abc,
                  size: 35.0,
                )
              ],
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => TaskTwo()));
              },
              child: Text('Get start'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 50.0,vertical: 10.0),
                  backgroundColor: Colors.brown,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0))),
            )
          ],
        ),
      ),
    );
  }
}
