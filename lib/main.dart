import 'package:flutter/material.dart';
import 'package:lakas/screens/getting_started.dart';
import 'package:lakas/screens/home.dart';
import 'package:lakas/screens/overlays/calendar.dart';
import 'package:lakas/screens/overlays/routine.dart';
import 'package:lakas/screens/overlays/settings.dart';
import 'package:lakas/screens/overlays/this_day.dart';
import 'package:lakas/screens/splash.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lakas',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        HomeScreen.routeName: (context) => const HomeScreen(),
        GettingStartedScreen.routeName: (context) =>
            const GettingStartedScreen(),
        ThisDayScreen.routeName: (context) => const ThisDayScreen(),
        SettingsScreen.routeName: (context) => const SettingsScreen(),
        RoutineScreen.routeName: (context) => const RoutineScreen(),
        CalendarScreen.routeName: (context) => const CalendarScreen(),
      },
    );
  }
}
