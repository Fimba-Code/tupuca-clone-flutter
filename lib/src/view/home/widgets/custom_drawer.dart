import 'package:flutter/material.dart';
import 'package:tupuca_clone/src/const/global_const.dart';
import 'package:tupuca_clone/src/view/home/widgets/custom_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 140,
              color: GlobalConst.primaryColor,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://avatars3.githubusercontent.com/u/29952508?s=400&u=d388db726961f3d8cfc5e2ae809659f927a0873b&v=4")),
                        borderRadius: BorderRadius.circular(50)),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Márcio",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "+244 922 88 40 32",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.chevron_right,
                        color: Colors.white,
                        size: 38,
                      ),
                      onPressed: null)
                ],
              ),
            ),
            CustomTile(
              icon: Icons.list,
              title: "Orders",
            ),
            CustomTile(
              icon: Icons.share,
              title: "Get 1000 Kz Off In Your Order",
            ),
            CustomTile(
              icon: Icons.notifications,
              title: "Notifications",
            ),
            CustomTile(
              icon: Icons.location_on,
              title: "Address Book",
            ),
            CustomTile(
              icon: Icons.chat_bubble_outline,
              title: "Chat Support",
            ),
            CustomTile(
              icon: Icons.note,
              title: "More",
            ),
            Spacer(),
            Container(
              height: 60,
              width: double.infinity,
              padding: EdgeInsets.only(left: 10, top: 20),
              color: GlobalConst.primaryColor,
              child: Text(
                "ENGLISH",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
