import 'package:jobfinder/ui/designsystem/atoms/jf_colours.dart';
import 'package:jobfinder/ui/designsystem/atoms/jf_texts.dart';
import 'package:jobfinder/ui/designsystem/utils/scale.dart' as scale;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class TextsGallery extends StatelessWidget {
  final double edgeInsets20 = scale.value(20.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: JFThemeColors.lightGrey,
        appBar: AppBar(
          title: JFAppBarHeader('Text Items'),
          centerTitle: true,
          elevation: 3,
          backgroundColor: JFThemeColors.deepGray,
          iconTheme: IconThemeData(color:JFThemeColors.black),
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(edgeInsets20),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  // Content Texts
                  JFHeader('This is a Header'),
                  Divider(),
                  JFTitle('This is a Title'),
                  Divider(),
                  JFDescriptionText(
                    "This is a description.",
                  ),
                  Divider(),
                  JFBodyText('This is a body Text'),
                  Divider(),
                  // AppBar Texts
                  JFAppBarHeader('This is an AppBar Header'),
                  Divider(),
                  JFAppBarDescription('This is an AppBar Description'),
                  Divider(),
                ],
              ),
            ),
          ),
        ));
  }
}
