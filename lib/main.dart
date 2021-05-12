import 'package:flutter/material.dart';
import 'package:shopping/Screens/front_page/front_page.dart';
import 'package:flutter/services.dart';
import 'package:shopping/Screens/reccommendedlist.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
        MaterialApp(
          home: Front_page(),


    );
  }
}


