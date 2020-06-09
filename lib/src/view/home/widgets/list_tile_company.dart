import 'package:flutter/material.dart';
import 'package:tupuca_clone/src/const/global_const.dart';
import 'package:tupuca_clone/src/view/company_details/company_details.dart';

class ListTileCompany extends StatelessWidget {
  const ListTileCompany({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => CompanyDetails()));
      },
      child: Container(
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
            border:
                Border(top: BorderSide(color: Colors.grey.withOpacity(.3)))),
        child: Container(
          margin: EdgeInsets.only(top: 20),
          child: Row(
            children: <Widget>[
              Container(
                height: 100,
                width: 100,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://scontent.flad2-1.fna.fbcdn.net/v/t1.0-9/36484322_216569868964721_52223168777027584_n.png?_nc_cat=110&_nc_sid=85a577&_nc_eui2=AeGMOfIOP1kqid0K5Lv5-5rUZs_92laGDNNmz_3aVoYM094WTiI77nLq6hdPNCwWOnMpWJZqbKhztgZ0RJ7uieSx&_nc_ohc=sRaMk2YseCIAX_JFwtc&_nc_ht=scontent.flad2-1.fna&oh=45038f683762426e5b3f5f62e41dab4b&oe=5F040C77"))),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                      width: 240,
                      child: Text(
                        "Emporio Cerrado - Pizzaria & Restaurantes",
                        style: TextStyle(fontSize: 20),
                      )),
                  SizedBox(
                    height: 4,
                  ),
                  Text("Food"),
                  Text("0.78 KM -"),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.timer,
                        color: GlobalConst.primaryColor,
                      ),
                      Text("1 hr 5 mins"),
                    ],
                  ),
                  Text(
                    "Order Online",
                    style: TextStyle(color: Colors.green),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
