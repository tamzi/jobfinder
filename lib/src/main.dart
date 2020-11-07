import 'package:flutter/material.dart';
import 'package:jobfinder/utils/theme.dart';
import 'package:jobfinder/utils/tokens/jf_texts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: JFThemeColors.white,
        appBar: AppBar(
          title: JFTitle('Job Finder'),
          centerTitle: true,
          elevation: 0,
          backgroundColor: JFThemeColors.lightGray,
        ),
        body: SafeArea(
          child: Container(),
        ));
  }
}
