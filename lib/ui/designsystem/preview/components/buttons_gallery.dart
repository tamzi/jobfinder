import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobfinder/ui/designsystem/atoms/jf_colours.dart';
import 'package:jobfinder/ui/designsystem/atoms/jf_texts.dart';
import 'package:jobfinder/ui/designsystem/components/jf_buttons.dart';
import 'package:jobfinder/ui/designsystem/utils/scale.dart' as scale;

class ButtonsGallery extends StatelessWidget {
  final double edgeInsets20 = scale.value(20.0);
  final double measured300 = scale.value(300.0);
  final double measured200 = scale.value(200.0);

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
                JFButtonDefault(
                  label: 'Default Button',
                  onPressed: () {
                    print('You tapped on Default Button');
                  },
                ),
                Divider(),
                Container(
                  width: double.infinity,
                  child: JFButtonBlackWhite(
                    label: 'Button BlackWhite',
                    onPressed: () {
                      print('You tapped on Button BlackWhite');
                    },
                  ),
                ),
                Divider(),
                Container(
                  width: double.infinity,
                  child: JFButtonDefault(
                    label: 'DefaultButton in container',
                    onPressed: () {
                      print('You tapped on DefaultButton in container');
                    },
                  ),
                ),
                Divider(),
                Container(
                  width: double.infinity,
                  child: JFButtonWarmRedWhite(
                    label: 'Button WarmRedWhite',
                    onPressed: () {
                      print('You tapped on a WarmRedWhite Button');
                    },
                  ),
                ),
                Divider(),
                Container(
                  width: double.infinity,
                  child: JFButtonWarmRedBlack(
                    label: 'Button WarmRedBlack',
                    onPressed: () {
                      print('You tapped on WarmRedBlack button');
                    },
                  ),
                ),
                Divider(),
                Container(
                  width: double.infinity,
                  child: JFButtonRedWhite(
                    label: 'Button RedWhite',
                    onPressed: () {
                      print('You tapped a RedWhite');
                    },
                  ),
                ),
                Divider(),
                Container(
                  width: double.infinity,
                  child: JFButtonRedBlack (
                    label: 'Button RedBlack',
                    onPressed: () {
                      print('You tapped a RedBlack button');
                    },
                  ),
                ),
                Divider(),
                Container(
                  width: double.infinity,
                  child: JFButtonLimeGreenBlack (
                    label: 'Button LimeGreenBlack',
                    onPressed: () {
                      print('You tapped a LimeGreenBlack button');
                    },
                  ),
                ),
                Divider(),
                Container(
                  width: double.infinity,
                  child: JFButtonLimeGreenWhite (
                    label: 'Button LimeGreenWhite',
                    onPressed: () {
                      print('You tapped a Button LimeGreenWhite button');
                    },
                  ),
                ),
                Divider(),
              ConstrainedBox(
                constraints: BoxConstraints.tightFor(
                    width: measured300, height: measured200
                ),
                child: JFButtonDefault(
                  label: 'default button stretched to 300 x 200',
                  onPressed: () {
                    print('You tapped on default button stretched to 300 x 200');
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
