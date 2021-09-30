import 'package:flutter/material.dart';
import 'package:jobfinder/utils/scale.dart' as scale;
import 'package:jobfinder/utils/theme.dart';
import 'package:jobfinder/utils/tokens/jf_buttons.dart';
import 'package:jobfinder/utils/tokens/jf_flat_buttons.dart';
import 'package:jobfinder/utils/tokens/jf_texts.dart';

void main() {
  runApp(JFTheme(
      child: MaterialApp(
    title: "JobFinder Component Gallery",
    home: GalleryRoot(),
    routes: {
      '/texts': (context) => TextsGallery(),
      '/buttons': (context) => ButtonsGallery(),
      '/Card': (context) => CardGallery(),
      '/listTiles': (context) => ListTilesGallery(),
    },
  )));
}

class GalleryRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: JFThemeColors.white,
        appBar: AppBar(
          title: JFAppBarHeader(
            'JF Element Gallery',
          ),
          centerTitle: true,
          elevation: 7,
          backgroundColor: JFThemeColors.deepGray,
        ),
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: ListView(
            children: <Widget>[
              /// Texts
              ListTile(
                title: JFTitle("JF Texts"),
                subtitle: JFDescriptionText(
                  "This will show a list of all the text items.",
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/texts');
                },
              ),
              Divider(),

              /// Buttons
              ListTile(
                title: JFTitle("JF Buttons"),
                subtitle: JFDescriptionText(
                    "This will show a list of all the button widgets."),
                onTap: () {
                  Navigator.pushNamed(context, "/buttons");
                },
              ),
              Divider(),
              ListTile(
                //TextButton
                title: JFTitle("JF Card "),
                subtitle: JFDescriptionText("Job Card Gallery. Can be tapped."),
                onTap: () {
                  Navigator.pushNamed(context, "/Card");
                },
              ),
              Divider(),

              /// ListsGallery
              ListTile(
                //SlideButton
                  title: JFTitle("JF Lists Gallery"),
                  subtitle: JFDescriptionText(
                      "Tiles layout with various information. Can be tapped."),
                  onTap: () {
                    Navigator.pushNamed(context, "/listTiles");
                  }),
              Divider(),

              /// JobCardGallery
            ],
          ),
        ));
  }
}

/// Start of Gallery element Classes
/// Text Widgets Gallery
class TextsGallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: JFThemeColors.lightGray,
        appBar: AppBar(
          title: JFAppBarHeader('Text Items'),
          centerTitle: true,
          elevation: 3,
          backgroundColor: JFThemeColors.deepGray,
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(scale.value(20.0)),
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

//Button Widgets
class ButtonsGallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: JFAppBarHeader('Buttons'),
          centerTitle: true,
          elevation: 3,
          backgroundColor: JFThemeColors.deepGray,
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(scale.value(20.0)),
            child: SingleChildScrollView(
              child: Column(children: <Widget>[
                Container(
                  width: double.infinity,
                  child: JFButtonBlack(
                    label: 'Apply Now',
                    onPressed: () {
                      print('You tapped on ButtonBlack with text Apply Now');
                    },
                  ),
                ),
                Divider(),
                Container(
                  width: double.infinity,
                  child: JFButtonGrey(
                    label: 'Delivered',
                    onPressed: () {
                      print('You tapped on ButtonGrey with text Delivered');
                    },
                  ),
                ),
                Divider(),
                Container(
                  width: double.infinity,
                  child: JFButtonRed(
                    label: 'Apply for job',
                    onPressed: () {
                      print('You tapped on ButtonRed with text Apply for job');
                    },
                  ),
                ),
                Divider(),
                Container(
                  width: double.infinity,
                  child: JFPlainFlatButton(
                    label: 'FlatButton',
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

class CardGallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: JFAppBarHeader('info Cards'),
          centerTitle: true,
          elevation: 3,
          backgroundColor: JFThemeColors.deepGray,
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(scale.value(20.0)),
            child: SingleChildScrollView(
              child: Column(children: <Widget>[
                Container(
                  child:  ElevatedButton(
                    child: Text('An Elevated Button'),
                    onPressed: () {
                      print('Pressed');
                    },
                  )
                ),
                Divider(),
                Container(
                    child:  ElevatedButton.icon(
                      label: Text('Elevated icon button'),
                      icon: Icon(Icons.web),
                      onPressed: () {
                        print('Pressed');
                      },
                    )
                ),
              ]),
            ),
          ),
        ));
  }
}

class JobCardGallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: JFAppBarHeader('Job Cards'),
          centerTitle: true,
          elevation: 3,
          backgroundColor: JFThemeColors.deepGray,
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(scale.value(20.0)),
            child: SingleChildScrollView(
              child: Column(children: <Widget>[]),
            ),
          ),
        ));
  }
}

class ListTilesGallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: JFAppBarHeader('List Tiles'),
          centerTitle: true,
          elevation: 3,
          backgroundColor: JFThemeColors.deepGray,
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(scale.value(20.0)),
            child: SingleChildScrollView(
              child: Column(children: <Widget>[]),
            ),
          ),
        ));
  }
}
