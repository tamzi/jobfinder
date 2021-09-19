import 'package:flutter/material.dart';
import 'package:jobfinder/utils/theme.dart';

abstract class _JFtext extends StatelessWidget {
  final String text;
  final TextAlign textAlign;
  final TextOverflow textOverflow;

  const _JFtext({
    Key? key,
    required this.text,
    required this.textAlign,
    required this.textOverflow,
  })  : assert(text != null, "A non-null String must be provided"),
        super(key: key);
}

// APPBAR TEXT ELEMENTS
/// THese are texts tht aiwll be used generally in the
/// appbars and sliverBars
/// APpBarHEader
class JFAppBarHeader extends _JFtext {
  const JFAppBarHeader(String text,
      {Key? key,
      TextAlign textAlign = TextAlign.start,
      TextOverflow textOverflow = TextOverflow.visible})
      : super(text: text, textAlign: textAlign, textOverflow: textOverflow);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: textOverflow,
      style: JFTheme.of(context).appBarHeader,
    );
  }
}

/// APpBarDescription Text
class JFAppBarDescription extends _JFtext {
  const JFAppBarDescription(String text,
      {Key? key,
      TextAlign textAlign = TextAlign.start,
      TextOverflow textOverflow = TextOverflow.visible})
      : super(text: text, textAlign: textAlign, textOverflow: textOverflow);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: textOverflow,
      style: JFTheme.of(context).appBarDescriptionText,
    );
  }
}

// CONTENT Texts
/// Header Texts
/// These are used in the various text items
class JFHeader extends _JFtext {
  const JFHeader(String text,
      {Key? key,
      TextAlign textAlign = TextAlign.start,
      TextOverflow textOverflow = TextOverflow.visible})
      : super(text: text, textAlign: textAlign, textOverflow: textOverflow);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: textOverflow,
      style: JFTheme.of(context).header,
    );
  }
}

// Title Widget
/// These wil be used in the overall title elements.
/// these will be placed in the various segments
class JFTitle extends _JFtext {
  const JFTitle(String text,
      {Key? key,
      TextAlign textAlign = TextAlign.start,
      TextOverflow textOverflow = TextOverflow.visible})
      : super(text: text, textAlign: textAlign, textOverflow: textOverflow);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: textOverflow,
      style: JFTheme.of(context).title,
    );
  }
}

// Description Text Widget
/// These are used in the various card element parts
class JFDescriptionText extends _JFtext {
  const JFDescriptionText(String text,
      {Key? key,
      TextAlign textAlign = TextAlign.start,
      TextOverflow textOverflow = TextOverflow.visible})
      : super(text: text, textAlign: textAlign, textOverflow: textOverflow);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: textOverflow,
      style: JFTheme.of(context).descriptionText,
    );
  }
}

// Body Text
/// This is the body text that will exist in the project
class JFBodyText extends _JFtext {
  const JFBodyText(String text,
      {Key? key,
      TextAlign textAlign = TextAlign.start,
      TextOverflow textOverflow = TextOverflow.visible})
      : super(text: text, textAlign: textAlign, textOverflow: textOverflow);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: textOverflow,
      style: JFTheme.of(context).bodyText,
    );
  }
}

// CARD Texts
/// These are used in the various hEaders in the cards.
/// The cards here include Job Cards and Infomation cards.
// Card Header
class JFCardHeader extends _JFtext {
  const JFCardHeader(String text,
      {Key? key,
      TextAlign textAlign = TextAlign.start,
      TextOverflow textOverflow = TextOverflow.visible})
      : super(text: text, textAlign: textAlign, textOverflow: textOverflow);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: textOverflow,
      style: JFTheme.of(context).header,
    );
  }
}

// BUTTON TEXTS
///  - These texts will appear on the various buttons
// Normal ButtonTexts
/// This is the default button text element.
/// This will be of the color black.
class JFBtnText extends _JFtext {
  const JFBtnText(String text,
      {Key? key,
      TextAlign textAlign = TextAlign.start,
      TextOverflow textOverflow = TextOverflow.visible})
      : super(text: text, textAlign: textAlign, textOverflow: textOverflow);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: textOverflow,
      style: JFTheme.of(context).buttonText,
    );
  }
}

// Flat Button Text
class JFFlatBtnText extends _JFtext {
  const JFFlatBtnText(String text,
      {Key? key,
      TextAlign textAlign = TextAlign.start,
      TextOverflow textOverflow = TextOverflow.visible})
      : super(text: text, textAlign: textAlign, textOverflow: textOverflow);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: textOverflow,
      style: JFTheme.of(context).flatButtonText,
    );
  }
}

//White Button Text
///
class JFBtnTextWhite extends _JFtext {
  const JFBtnTextWhite(String text,
      {Key? key,
      TextAlign textAlign = TextAlign.start,
      TextOverflow textOverflow = TextOverflow.visible})
      : super(text: text, textAlign: textAlign, textOverflow: textOverflow);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: textOverflow,
      style: JFTheme.of(context).buttonTextWhite,
    );
  }
}

// Error Button Text
///
class JFBtnTextError extends _JFtext {
  const JFBtnTextError(String text,
      {Key? key,
      TextAlign textAlign = TextAlign.start,
      TextOverflow textOverflow = TextOverflow.visible})
      : super(text: text, textAlign: textAlign, textOverflow: textOverflow);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: textOverflow,
      style: JFTheme.of(context).buttonTextError,
    );
  }
}

// Success Button Text
///
class JFBtnTextSuccess extends _JFtext {
  const JFBtnTextSuccess(String text,
      {Key? key,
      TextAlign textAlign = TextAlign.start,
      TextOverflow textOverflow = TextOverflow.visible})
      : super(text: text, textAlign: textAlign, textOverflow: textOverflow);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: textOverflow,
      style: JFTheme.of(context).buttonTextSuccess,
    );
  }
}
