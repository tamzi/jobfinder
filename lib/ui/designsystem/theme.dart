import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:jobfinder/ui/designsystem/atoms/jf_colours.dart';

const JFThemeData _default = JFThemeData(
  /// Colors
  bluish: JFThemeColors.bluish,
  darkBluish: JFThemeColors.darkBlue,
  reddish: JFThemeColors.reddish,
  warmRed: JFThemeColors.warmRed,
  limeGreenish: JFThemeColors.limeGreen,
  white: JFThemeColors.white,
  black: JFThemeColors.black,
  gray: JFThemeColors.grey,
  deepGray: JFThemeColors.deepGray,
  darkGray: JFThemeColors.lightGrey,
  lightGray: JFThemeColors.lightGrey,
  buttonRed: JFThemeColors.buttonRed,

  /// All Text Fields
  appBarHeader: TextStyle(
      fontSize: 27.0,
      height: 1.7,
      letterSpacing: -0.3,
      fontFamily: 'DMSans',
      fontWeight: FontWeight.w500,
      color: JFThemeColors.black),
  appBarDescriptionText: TextStyle(
      fontSize: 13.0,
      height: 1.3,
      letterSpacing: 0.3,
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w700,
      color: JFThemeColors.darkGray),

  header: TextStyle(
      fontSize: 37.0,
      height: 1.7,
      letterSpacing: -0.3,
      fontFamily: 'DMSans',
      fontWeight: FontWeight.w900,
      color: JFThemeColors.black),
  title: TextStyle(
      fontSize: 33.0,
      height: 1.3,
      letterSpacing: -0.3,
      fontFamily: 'DMSans',
      fontWeight: FontWeight.w500,
      color: JFThemeColors.black),
  bodyText: TextStyle(
      fontSize: 13.0,
      height: 1.7,
      letterSpacing: -0.3,
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.normal,
      color: JFThemeColors.darkGray),
  descriptionText: TextStyle(
      fontSize: 17.0,
      height: 1.3,
      letterSpacing: -0.3,
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w300,
      color: JFThemeColors.black),
  cardHeader: TextStyle(
      fontSize: 17.0,
      height: 1.3,
      letterSpacing: -0.3,
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w700,
      color: JFThemeColors.black),

  ///TextButtons
  ///The buttonText will be the default button text for all the
  ///buttons in the application.
  buttonText: TextStyle(
      fontSize: 17.0,
      height: 1.2,
      letterSpacing: -0.3,
      fontFamily: 'DMSans',
      fontWeight: FontWeight.w300,
      color: JFThemeColors.black),
  flatButtonText: TextStyle(
      fontSize: 15.0,
      height: 1.2,
      letterSpacing: -0.3,
      fontFamily: 'DMSans',
      fontWeight: FontWeight.w500,
      color: JFThemeColors.black),
  buttonTextWhite: TextStyle(
      fontSize: 13.0,
      height: 1.2,
      letterSpacing: -0.3,
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w300,
      color: JFThemeColors.white),
  buttonTextError: TextStyle(
      fontSize: 13.0,
      height: 1.2,
      letterSpacing: -0.3,
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w300,
      color: JFThemeColors.reddish),
  buttonTextSuccess: TextStyle(
      fontSize: 13.0,
      height: 1.2,
      letterSpacing: -0.3,
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w300,
      color: JFThemeColors.limeGreen),

  ///FORM
  ///
  inputText: TextStyle(
      fontSize: 13.0,
      height: 1.2,
      letterSpacing: -0.3,
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w300,
      color: JFThemeColors.black),
);

class JFThemeData {
  /// Colors
  final Color? bluish;
  final Color? darkBluish;
  final Color? black;
  final Color? reddish;
  final Color? warmRed;
  final Color? limeGreenish;
  final Color? white;
  final Color? gray;
  final Color? deepGray;
  final Color? darkGray;
  final Color? lightGray;

  final Color? buttonRed;

  final JFThemeColors? colors;

  //Text
  ///AppBar Texts
  final TextStyle? appBarHeader;
  final TextStyle? appBarDescriptionText;

  ///Content Texts
  final TextStyle? header;
  final TextStyle? title;
  final TextStyle? bodyText;
  final TextStyle? descriptionText;
  final TextStyle? cardHeader;

  /// ButtonTexts
  final TextStyle? buttonText;
  final TextStyle? buttonTextError;
  final TextStyle? buttonTextSuccess;
  final TextStyle? buttonTextWhite;
  final TextStyle? flatButtonText;

  //Form Texts
  final TextStyle? inputText;

  const JFThemeData({
    /// Colors
    this.bluish,
    this.darkBluish,
    this.black,
    this.reddish,
    this.warmRed,
    this.limeGreenish,
    this.gray,
    this.deepGray,
    this.darkGray,
    this.lightGray,
    this.white,
    this.colors,
    this.buttonRed,
    // TEXT
    /// AppBar Text
    this.appBarHeader,
    this.appBarDescriptionText,

    /// Content Text
    this.header,
    this.title,
    this.bodyText,
    this.descriptionText,
    this.cardHeader,
    this.inputText,

    /// ButtonTexts
    this.buttonText,
    this.flatButtonText,
    this.buttonTextError,
    this.buttonTextSuccess,
    this.buttonTextWhite,
  });
}

/// The JobFinder Theme.
///
/// This is the theme for the Job Finder UI Component that make up the
/// Job Finder design system for the  application.
///
/// **Note**
/// This is separate to the Flutter Material [Theme] class.
/// See Usage below.
///
/// The values for the Theme are provided by [JFThemeData].
/// (The properties of [JFThemeData] are the design atoms for the UI.)
///
/// The default theme values (aka fallback theme) used is considered the
/// standard theme configuration. This can be replaced in the
/// JobFinderThemeData constructor if needed.
///
/// The fields in this class represent the design atoms in the Job Finder
/// design system. They are referenced directly by the UI Component Widgets
/// for the design system. This means that changing the values will change
/// the visual styling of the UI Components.
class JFTheme extends InheritedWidget {
  JFTheme({this.data = _default, required this.child}) : super(child: child);

  /// The design atoms used by UI Components to apply styling.
  final JFThemeData data;
  final Widget child;

  /// Use to get a reference to the nearest available [JFThemeData] anywhere
  /// in the widget tree below the child widget.
  ///
  /// ```
  /// var themeData = JFTheme.of(context);
  /// ```
  static JFThemeData of(BuildContext context) {
    ///This will help in logging instances where the theme
    ///is not found on the console.
    ///Ideally this should not be case as we will follow strcitly
    ///the design system
    final Logger staticLogger = Logger();
    final JFTheme? currentTheme =
        context.dependOnInheritedWidgetOfExactType<JFTheme>();
    if (currentTheme == null) {
      staticLogger.w("JobFinderTheme missing. Will apply the default theme");
      return _default;
    }
    return currentTheme.data;
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return data == (oldWidget as JFTheme).data;
  }
}
