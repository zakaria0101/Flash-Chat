import 'package:flutter/material.dart';

class RounndedButton extends StatelessWidget {
  final String btnText;
  final Color btnColor;
  final Function onclick;
  RounndedButton({this.btnText, this.btnColor, @required this.onclick});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: btnColor,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onclick,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            btnText,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
