import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  Tile({required this.coverPath, required this.title});

  final String coverPath;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25.0),
      width: 140.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 140.0,
            width: 140.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                    image: NetworkImage('$coverPath'),fit: BoxFit.cover)),
          ),
          SizedBox(height: 5.0),
          Text('$title',textAlign: TextAlign.center,maxLines: 3,overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontSize: 14.0, fontWeight: FontWeight.w500)),
          SizedBox(height: 3.0),
        ],
      ),
    );
  }
}
