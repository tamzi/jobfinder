import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobfinder/ui/designsystem/atoms/jf_colours.dart';
import 'package:jobfinder/ui/designsystem/atoms/jf_texts.dart';
import 'package:jobfinder/ui/designsystem/components/jf_text_buttons.dart';
import 'package:jobfinder/ui/designsystem/utils/scale.dart' as scale;

class TextButtonsGallery extends StatelessWidget {
  final double edgeInsets20 = scale.value(20.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: JFThemeColors.white,
        appBar: AppBar(
          title: JFAppBarHeader('Buttons'),
          centerTitle: true,
          elevation: 3,
          backgroundColor: JFThemeColors.deepGray,
          iconTheme: IconThemeData(color:JFThemeColors.black),
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(edgeInsets20),
            child: SingleChildScrollView(
              child: Column(children: <Widget>[
                Container(
                  width: double.infinity,
                  child: JFPlainTextButton(
                    label: 'Normal Text Button',
                    onPressed: () {
                      print('You tapped a FlatButton with text FlatButton');
                    },
                  ),
                ),
                Divider(),
                Container(
                  width: double.infinity,
                  child: JFWarningTextButton(
                    label: 'Warning Text Button',
                    onPressed: () {
                      print('You tapped a FlatButton with text FlatButton');
                    },
                  ),
                ),
                Divider(),
                Container(
                  width: double.infinity,
                  child: JFSuccessTextButton(
                    label: 'Success Text Button',
                    onPressed: () {
                      print('You tapped a FlatButton with text FlatButton');
                    },
                  ),
                ),
                Divider(),
              ]),
            ),
          ),
        ));
  }
}
