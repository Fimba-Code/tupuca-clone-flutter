import 'package:flutter/material.dart';
import 'package:tupuca_clone/src/const/global_const.dart';

class CustomTile extends StatelessWidget {
  final String title;
  final IconData icon;
  CustomTile({this.title, this.icon});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, top: 20),
      child: Row(
        children: <Widget>[
          Icon(
            icon,
            color: GlobalConst.primaryColor,
            size: 40,
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 180,
            child: Text(
              title ?? "",
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
          )
        ],
      ),
    );
  }
}
