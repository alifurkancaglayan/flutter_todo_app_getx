import 'package:flutter/material.dart';
import 'package:flutter_todo_app_getx/db/db_helper.dart';
import 'package:flutter_todo_app_getx/services/theme_services.dart';
import 'package:flutter_todo_app_getx/ui/home_page.dart';
import 'package:flutter_todo_app_getx/ui/theme.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DBHelper.initDb();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'To Do App',
      debugShowCheckedModeBanner: false,
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: ThemeServices().theme,
      home: const HomePage(),
    );
  }
}
