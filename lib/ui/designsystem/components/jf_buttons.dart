import 'package:jobfinder/ui/designsystem/utils/scale.dart' as scale;
import 'package:flutter/material.dart';
import 'package:jobfinder/ui/designsystem/theme.dart';

/// This is a button builder that will be used to build the
/// various properties we need for the buttons that will be created.
/// The
class _ButtonBuilder {
  final double edgeInset17 = scale.value(17.0);
  final VoidCallback? onPressed;
  final String label;
  final Color? btnPrimaryColor;
  final Color? btnTextColor;
  final OutlinedBorder btnShape;

  /* final Color? color;*/

  _ButtonBuilder({
    required this.onPressed,
    required this.label,
    required this.btnPrimaryColor,
    required this.btnTextColor,
    required this.btnShape,
  });

  ElevatedButton build() {
    return ElevatedButton(
      child: Text(this.label),
      onPressed: this.onPressed == null ? null : this.onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.all(edgeInset17),
        primary: this.btnPrimaryColor,
        onPrimary: this.btnTextColor,
        elevation: 5,
        shape: this.btnShape,
      ),
    );
  }
}

class JFButtonDefault extends StatelessWidget {
  final double radiusCircular10 = scale.value(10.0);
  final String label;
  final VoidCallback? onPressed;

  JFButtonDefault({
    required this.label,
    this.onPressed,
  });

  /// We build our buttons calling the JFThemeData and the buttonBuilder
  /// class.
  /// This can be repeated for all the buttons we want to build
  @override
  Widget build(BuildContext context) {
    final themeData = JFTheme.of(context);
    return _ButtonBuilder(
      label: this.label,
      btnPrimaryColor: themeData.deepGray,
      btnTextColor: themeData.black,
      btnShape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(radiusCircular10),
      ),
      onPressed: this.onPressed,
    ).build();
  }
}

/*Red buttons*/
class JFButtonRedWhite extends StatelessWidget {
  final double radiusCircular10 = scale.value(10.0);
  final String label;
  final VoidCallback? onPressed;

  JFButtonRedWhite({
    required this.label,
    this.onPressed,
  });

  /// We build our buttons calling the JFThemeData and the buttonBuilder
  /// class.
  /// This can be repeated for all the buttons we want to build
  @override
  Widget build(BuildContext context) {
    final themeData = JFTheme.of(context);
    return _ButtonBuilder(
      label: this.label,
      btnPrimaryColor: themeData.reddish,
      btnTextColor: JFTheme.of(context).white,
      btnShape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(radiusCircular10),
      ),
      onPressed: this.onPressed,
    ).build();
  }
}

class JFButtonRedBlack extends StatelessWidget {
  final double radiusCircular10 = scale.value(10.0);
  final String label;
  final VoidCallback? onPressed;

  JFButtonRedBlack({
    required this.label,
    this.onPressed,
  });

  /// We build our buttons calling the JFThemeData and the buttonBuilder
  /// class.
  /// This can be repeated for all the buttons we want to build
  @override
  Widget build(BuildContext context) {
    final themeData = JFTheme.of(context);
    return _ButtonBuilder(
      label: this.label,
      btnPrimaryColor: themeData.reddish,
      btnTextColor: JFTheme.of(context).black,
      btnShape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(radiusCircular10),
      ),
      onPressed: this.onPressed,
    ).build();
  }
}

/*Warm red buttons*/
class JFButtonWarmRedWhite extends StatelessWidget {
  final double radiusCircular10 = scale.value(10.0);
  final String label;
  final VoidCallback? onPressed;

  JFButtonWarmRedWhite({
    required this.label,
    this.onPressed,
  });

  /// We build our buttons calling the JFThemeData and the buttonBuilder
  /// class.
  /// This can be repeated for all the buttons we want to build
  @override
  Widget build(BuildContext context) {
    final themeData = JFTheme.of(context);
    return _ButtonBuilder(
      label: this.label,
      btnPrimaryColor: themeData.warmRed,
      btnTextColor: JFTheme.of(context).white,
      btnShape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(radiusCircular10),
      ),
      onPressed: this.onPressed,
    ).build();
  }
}

class JFButtonWarmRedBlack extends StatelessWidget {
  final double radiusCircular10 = scale.value(10.0);
  final String label;
  final VoidCallback? onPressed;

  JFButtonWarmRedBlack({
    required this.label,
    this.onPressed,
  });

  /// We build our buttons calling the JFThemeData and the buttonBuilder
  /// class.
  /// This can be repeated for all the buttons we want to build
  @override
  Widget build(BuildContext context) {
    final themeData = JFTheme.of(context);
    return _ButtonBuilder(
      label: this.label,
      btnPrimaryColor: themeData.warmRed,
      btnTextColor: JFTheme.of(context).black,
      btnShape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(radiusCircular10),
      ),
      onPressed: this.onPressed,
    ).build();
  }
}

/*Black buttons*/
class JFButtonBlackWhite extends StatelessWidget {
  final double radiusCircular10 = scale.value(10.0);
  final String label;
  final VoidCallback? onPressed;

  JFButtonBlackWhite({
    required this.label,
    this.onPressed,
  });

  /// We build our buttons calling the JFThemeData and the buttonBuilder
  /// class.
  /// This can be repeated for all the buttons we want to build
  @override
  Widget build(BuildContext context) {
    final themeData = JFTheme.of(context);
    return _ButtonBuilder(
      label: this.label,
      btnPrimaryColor: themeData.black,
      btnTextColor: JFTheme.of(context).white,
      btnShape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(radiusCircular10),
      ),
      onPressed: this.onPressed,
    ).build();
  }
}

/*White buttons*/
class JFButtonWhiteBlack extends StatelessWidget {
  final double radiusCircular10 = scale.value(10.0);
  final String label;
  final VoidCallback? onPressed;

  JFButtonWhiteBlack({
    required this.label,
    this.onPressed,
  });

  /// We build our buttons calling the JFThemeData and the buttonBuilder
  /// class.
  /// This can be repeated for all the buttons we want to build
  @override
  Widget build(BuildContext context) {
    final themeData = JFTheme.of(context);
    return _ButtonBuilder(
      label: this.label,
      btnPrimaryColor: themeData.white,
      btnTextColor: JFTheme.of(context).black,
      btnShape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(radiusCircular10),
      ),
      onPressed: this.onPressed,
    ).build();
  }
}

/*Lime green buttons*/
class JFButtonLimeGreenBlack extends StatelessWidget {
  final double radiusCircular10 = scale.value(10.0);
  final String label;
  final VoidCallback? onPressed;

  JFButtonLimeGreenBlack({
    required this.label,
    this.onPressed,
  });

  /// We build our buttons calling the JFThemeData and the buttonBuilder
  /// class.
  /// This can be repeated for all the buttons we want to build
  @override
  Widget build(BuildContext context) {
    final themeData = JFTheme.of(context);
    return _ButtonBuilder(
      label: this.label,
      btnPrimaryColor: themeData.limeGreenish,
      btnTextColor: JFTheme.of(context).black,
      btnShape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(radiusCircular10),
      ),
      onPressed: this.onPressed,
    ).build();
  }
}

class JFButtonLimeGreenWhite extends StatelessWidget {
  final double radiusCircular10 = scale.value(10.0);
  final String label;
  final VoidCallback? onPressed;

  JFButtonLimeGreenWhite({
    required this.label,
    this.onPressed,
  });

  /// We build our buttons calling the JFThemeData and the buttonBuilder
  /// class.
  /// This can be repeated for all the buttons we want to build
  @override
  Widget build(BuildContext context) {
    final themeData = JFTheme.of(context);
    return _ButtonBuilder(
      label: this.label,
      btnPrimaryColor: themeData.limeGreenish,
      btnTextColor: JFTheme.of(context).white,
      btnShape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(radiusCircular10),
      ),
      onPressed: this.onPressed,
    ).build();
  }
}

/*Grey buttons*/
class JFButtonGreyBlack extends StatelessWidget {
  final double radiusCircular10 = scale.value(10.0);
  final String label;
  final VoidCallback? onPressed;

  JFButtonGreyBlack({
    required this.label,
    this.onPressed,
  });

  /// We build our buttons calling the JFThemeData and the buttonBuilder
  /// class.
  /// This can be repeated for all the buttons we want to build
  @override
  Widget build(BuildContext context) {
    final themeData = JFTheme.of(context);
    return _ButtonBuilder(
      label: this.label,
      btnPrimaryColor: themeData.lightGray,
      btnTextColor: JFTheme.of(context).black,
      btnShape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(radiusCircular10),
      ),
      onPressed: this.onPressed,
    ).build();
  }
}
