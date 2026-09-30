import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmicalculater/constants.dart';

class IconContent extends StatelessWidget {
  const IconContent({super.key, this.icon, this.label});

  final dynamic icon;
  final String? label;

  @override
  Widget build(BuildContext context) {
    Widget? iconWidget;
    if (icon is IconData) {
      iconWidget = Icon(icon as IconData, size: 80.0);
    } else if (icon != null) {
      iconWidget = FaIcon(icon, size: 80.0);
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ?iconWidget,
        const SizedBox(height: 15.0),
        if (label != null) Text(label!, style: kLabelTextStyle),
      ],
    );
  }
}