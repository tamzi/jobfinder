import 'package:flutter/material.dart';
import 'package:jobfinder/utils/theme.dart';

abstract class _JFtext extends StatelessWidget {
  final String text;
  final TextAlign textAlign;
  final TextOverflow textOverflow;

  const _JFtext({
    Key key,
    @required this.text,
    @required this.textAlign,
    @required this.textOverflow,
  })  : assert(text != null, "A non-null String must be provided"),
        super(key: key);
}

//JFTitle Widget
class JFTitle extends _JFtext {
  const JFTitle(String text,
      {Key key,
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

class JFDescText extends _JFtext {
  const JFDescText(String text,
      {Key key,
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

class JFBodyText extends _JFtext {
  const JFBodyText(String text,
      {Key key,
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
