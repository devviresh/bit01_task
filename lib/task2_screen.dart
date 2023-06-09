import 'package:bit01_task/task1_screen.dart';
import 'package:bit01_task/widgets/tile.dart';
import 'package:flutter/material.dart';

class TaskTwo extends StatefulWidget {
  const TaskTwo({Key? key}) : super(key: key);

  @override
  State<TaskTwo> createState() => _TaskTwoState();
}

class _TaskTwoState extends State<TaskTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(child: Text('Discovery',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
        automaticallyImplyLeading: false,
      ),
      body: ListView.builder(
        itemCount: 2500,
        itemBuilder: (context, index){
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Tile(coverPath: apiData[index*2]['thumbnailUrl'], title: apiData[index*2]['title']),
              Tile(coverPath: apiData[(index*2)+1]['thumbnailUrl'], title: apiData[(index*2)+1]['title']),
            ],
          );
        },
      ),
    );
  }
}

// child: Container(
//   padding: EdgeInsets.symmetric(horizontal: 20.0),
//   child: Wrap(
//     alignment: WrapAlignment.spaceAround,
//     children: [
//       for(int i=0; i<apiData.length; i++)
//         Tile(coverPath: apiData[i]['thumbnailUrl'], title: apiData[i]['title'])
//     ],
//   ),
// ),



