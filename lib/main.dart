import 'package:flutter/material.dart';
import 'package:hive_basics_dart/db/model/data_model.dart';
import 'package:hive_basics_dart/home_screen.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(StudentModelAdapter().typeId)) {
    Hive.registerAdapter(StudentModelAdapter());
  }
  runApp(
    const HomeScreen(),
  );
}
