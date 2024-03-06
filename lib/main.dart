import 'package:flutter/material.dart';
import 'package:hive_box_adapter_sample/model/student_model.dart';
import 'package:hive_box_adapter_sample/view/home_screen/home_screen.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(StudentAdapter());

  var box = await Hive.openBox<Student>('samplebox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
