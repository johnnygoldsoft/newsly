import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsly/screens/homeScreen.dart';
import 'package:newsly/screens/mainScreen.dart';
import 'package:newsly/screens/newsDetailScreen.dart';
import 'package:newsly/screens/onbordingScreen.dart';

void main() {
  runApp(
    DevicePreview(
      isToolbarVisible: true,
      builder: (context) => const MyApp(),
    ),

    // const MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Newsdetailscreen(),
      ),
    );
  }
}
