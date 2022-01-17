import 'package:flutter/material.dart';

class AttendancePage extends StatefulWidget {
  const AttendancePage({Key? key}) : super(key: key);

  @override
  _AttendancePageState createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Attendance Page')),
      body: Container(
        color: const Color(0xffF4F3F3),
        child: Column(
          children: [
            Container(
              color: Colors.orangeAccent.shade100,
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        print("Show Subject Page with attendance history");
                      },
                      child: Text("Subject_Name")),
                  ElevatedButton(
                      onPressed: () {
                        print("Show todays attendance history");
                      },
                      child: Text("Cur_Date")),
                ],
              ),
            ),
            StudentWidget("Rahul Sharma", 1231321),
            StudentWidget("Raj Arora", 1231321),
            StudentWidget("Mukesh Shah", 1231321),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}

Widget StudentWidget(String studentName, int rollNo,
    {String? profile_pic_url}) {
  return GestureDetector(
    onTapDown: (e) {
      print("Element is tapped");
    },
    child: Container(
      margin: const EdgeInsets.all(4),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.portrait),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsetsDirectional.only(start: 0.0),
                child: Text(studentName),
              ),
              Container(
                padding: const EdgeInsetsDirectional.only(start: 15.0),
                child: Text("RollNo. $rollNo"),
              ),
            ],
          ),
          Icon(Icons.minimize),
          Icon(Icons.add),
        ],
      ),
    ),
  );
}
