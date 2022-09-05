import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'designsystem/atoms/jf_colours.dart';
import 'designsystem/atoms/jf_texts.dart';


void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'jobFinder',
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: HomePage(),
      getPages: [
        GetPage(name: '/page-one', page: () => PageOne()),
        GetPage(name: '/page-two', page: () => PageTwo()),
        GetPage(name: '/page-three', page: () => PageThree()),
        GetPage(name: '/page-four/:data', page: () => PageFour()) // Dynamic route
      ],
    );
  }
}



class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: JFThemeColors.white,
        appBar: AppBar(
          title: JFTitle('Job Finder'),
          centerTitle: true,
          elevation: 0,
          backgroundColor: JFThemeColors.lightGrey,
        ),
        body: SafeArea(
          child: Container(),
        ));
  }
}

// Page One
class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page One'),
      ),
      body: Center(
        child: Text(
          Get.parameters['id'] ?? 'Page One',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}

// Page Two
class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Two'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Get.off(HomePage()),
          child: Text('Go Home'),
        ),
      ),
    );
  }
}

// Page Three
class PageThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Three'),
      ),
      body: Center(
        child: Text(
          Get.parameters['id'] ?? 'Page Three',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}

// Page Four
class PageFour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Four'),
      ),
      body: Center(
        child: Text(
          Get.parameters['data'] ?? 'Page Four',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
