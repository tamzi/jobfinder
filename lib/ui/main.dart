import 'package:flutter/material.dart';

import 'designsystem/atoms/jf_colours.dart';
import 'designsystem/atoms/jf_texts.dart';


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
          backgroundColor: JFThemeColors.lightGrey,
        ),
        body: SafeArea(
          child: Container(),
        ));
  }
}
