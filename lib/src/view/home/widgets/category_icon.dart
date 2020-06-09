import 'package:flutter/material.dart';

class CategoryIcon extends StatelessWidget {
  final IconData icon;
  final String text;
  CategoryIcon({this.icon, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(right: 10, left: 20),
          height: 70,
          width: 70,
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(50))),
          child: Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
        ),
        SizedBox(height: 10,),
        Text(text ?? "")
      ],
    );
  }
}
