import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:take_care_demo_app/models/custom_material_color.dart';
import 'package:take_care_demo_app/widgets/tabs_navigation.dart';

void main() {
  //Makes it so SystemChrome.setPreferredOrientations works
  WidgetsFlutterBinding.ensureInitialized();
  //Sets preffered orientations
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  //Runs the app on boot
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Take Care Demo',
      theme: ThemeData(
        primarySwatch:
            createMaterialColor(const Color.fromARGB(255, 255, 255, 255)),
        primaryColor: Colors.white,
        accentColor: Colors.purple,
      ),
      routes: {
        //Main Page
        '/': (context) => TabsNavigation(),
      },
    );
  }
}
