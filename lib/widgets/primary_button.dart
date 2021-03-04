import 'package:flutter/material.dart';
import 'package:flutter_web_practice/core/framework/styles.dart';

class PrimaryButton extends StatelessWidget {
  final Function onPressed;
  final String title;

  PrimaryButton({Key key, @required this.onPressed, @required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onPressed,
      shape: StadiumBorder(),
      color: Theme.of(context).primaryColor,
      child: Container(
        constraints: const BoxConstraints(minWidth: 88.0, minHeight: 36.0),
        padding: EdgeInsets.symmetric(vertical: 16),
        child: Text(
          title.toUpperCase(),
          style: Button,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
