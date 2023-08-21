import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:take_care_demo_app/models/custom_material_color.dart';
import './screens/person_details_screen.dart';
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
      debugShowCheckedModeBanner: false,
      title: 'Take Care Demo',
      theme: ThemeData(
        fontFamily: 'Lato',
        colorScheme: ColorScheme.light(
          primary: Colors.white,
          secondary: Colors.purple,
          tertiary: createMaterialColor(const Color.fromRGBO(226, 229, 222, 1)),
        ),
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          },
        ),
      ),
      routes: {
        //Main Page
        '/': (context) => TabsNavigation(),
        //Person Details
        PersonDetailsScreen.routeName: (context) => PersonDetailsScreen(),
      },
    );
  }
}
