import 'package:flutter/material.dart';
import 'package:jobfinder/ui/designsystem/atoms/jf_colours.dart';
import 'package:jobfinder/ui/designsystem/atoms/jf_texts.dart';

import '../theme.dart';
import 'components/buttons_gallery.dart';
import 'components/card_gallery.dart';
import 'components/flat_buttons_gallery.dart';
import 'components/list_tiles_gallery.dart';
import 'components/text_gallery.dart';
import 'package:jobfinder/ui/designsystem/utils/scale.dart' as scale;

void main() {
  runApp(JFTheme(
      child: MaterialApp(
    title: "Core theme Component gallery viewer Application",
    home: GalleryRoot(),
    routes: {
      '/texts': (context) => TextsGallery(),
      '/buttons': (context) => ButtonsGallery(),
      '/textButtons': (context) => TextButtonsGallery(),
      '/listTiles': (context) => ListTilesGallery(),
      '/Cards': (context) => CardGallery(),
    },
  )));
}

class GalleryRoot extends StatelessWidget {
  final double edgeInsets10 = scale.value(10.0);

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
          padding: EdgeInsets.all(edgeInsets10),
          child: ListView(
            children: <Widget>[
              /// Texts
              ListTile(
                title: JFTitle("Texts"),
                subtitle: JFDescriptionText(
                  "This shows a list of all the text items. in the application.",
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/texts');
                },
              ),

              /// Buttons
              ListTile(
                title: JFTitle("Buttons"),
                subtitle: JFDescriptionText(
                    "This will show a list of all the button widgets."),
                onTap: () {
                  Navigator.pushNamed(context, "/buttons");
                },
              ),
              ListTile(
                title: JFTitle("Text Buttons"),
                subtitle: JFDescriptionText(
                    "This shows a list of all the Text button widgets."),
                onTap: () {
                  Navigator.pushNamed(context, "/textButtons");
                },
              ),
              Divider(),
            ],
          ),
        ));
  }
}
