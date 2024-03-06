import 'package:flutter/material.dart';
import 'package:hive_box_adapter_sample/model/student_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var myBox = Hive.box<Student>('samplebox');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                myBox.put("student",
                    Student(classNO: "1", name: "shihab", rollNo: "ghuijkl"));

                setState(() {});
              },
              child: Text("save"),
            ),
            SizedBox(height: 100),
            Text(myBox.get("student")?.classNO ?? ""),
          ],
        ),
      ),
    );
  }
}
