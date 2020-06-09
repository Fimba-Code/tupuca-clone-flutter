import 'package:flutter/material.dart';
import 'package:tupuca_clone/src/const/global_const.dart';

class TileProductCompany extends StatelessWidget {
  const TileProductCompany({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(color: Colors.grey.withOpacity(.3)))),
      child: Row(
        children: <Widget>[
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://evofitness.ch/wp-content/uploads/2019/06/Battle-ropes-Cordes-ondulatoires-EVO-Fitness-1200x675.jpg", ), fit: BoxFit.cover)),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Fitness",
                style:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text("Artigos de Fitness")
            ],
          ),
          Spacer(),
          IconButton(
              icon: Icon(
                Icons.chevron_right,
                color: GlobalConst.primaryColor,
                size: 30,
              ),
              onPressed: null)
        ],
      ),
    );
  }
}
