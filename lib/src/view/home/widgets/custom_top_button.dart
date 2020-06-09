import 'package:flutter/material.dart';
import 'package:tupuca_clone/src/const/global_const.dart';

class CustomButtonTop extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool active;
  CustomButtonTop({this.icon, this.text, this.active});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      child: RaisedButton(
        padding: EdgeInsets.only(left: 40, top: 15, bottom: 15),
        onPressed: () {},
        color: active ? Colors.black : Colors.white,
        child: Row(
          children: <Widget>[
            Icon(
              icon,
              color: active ? GlobalConst.primaryColor : Colors.grey,
            ),
            Text(text,
                style: TextStyle(color: active ? GlobalConst.primaryColor : Colors.grey)),
          ],
        ),
      ),
    );
  }
}
