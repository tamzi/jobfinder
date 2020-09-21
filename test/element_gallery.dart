import 'package:flutter/material.dart';
import 'package:jobfinder/utils/common/jf_texts.dart';
import 'package:jobfinder/utils/scale.dart' as scale;
import 'package:jobfinder/utils/theme.dart';

void main() {
  runApp(JFTheme(
      child: MaterialApp(
    title: "JobFinder Component Gallery",
    home: GalleryRoot(),
    routes: {
      '/texts': (context) => TextsGallery(),
      '/buttons': (context) => ButtonsGallery(),
      '/listTiles': (context) => ListTilesGallery(),
      '/infoCard': (context) => InfoCardGallery(),
      '/jobCard': (context) => JobCardGallery(),
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
                title: JFTitle("Texts"),
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
                title: JFTitle("Buttons"),
                subtitle: JFDescriptionText(
                    "This will show a list of all the button widgets."),
                onTap: () {
                  Navigator.pushNamed(context, "/buttons");
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

              /// Info Card
              ListTile(
                //TextButton
                title: JFTitle("JF Info Card"),
                subtitle:
                    JFDescriptionText("Job Info Card Gallery. Can be tapped."),
                onTap: () {
                  Navigator.pushNamed(context, "/infoCard");
                },
              ),
              Divider(),

              /// JobCardGallery
              ListTile(
                //TextButton
                title: JFTitle("JF Card "),
                subtitle: JFDescriptionText("Job Card Gallery. Can be tapped."),
                onTap: () {
                  Navigator.pushNamed(context, "/jobCard");
                },
              ),
              Divider(),
            ],
          ),
        ));
  }
}

/// Start of Gallery element Classes
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
          child: Container(),
        ));
  }
}

class InfoCardGallery extends StatelessWidget {
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
          child: Container(),
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
          child: Container(),
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
          child: Container(),
        ));
  }
}
