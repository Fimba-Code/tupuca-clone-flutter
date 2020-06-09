import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tupuca_clone/src/const/global_const.dart';
import 'package:tupuca_clone/src/view/company_details/widgets/tile_company_category.dart';

class CompanyDetails extends StatelessWidget {
  const CompanyDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          "Sport Zone",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: null)
        ],
      ),
      body: Platform.isAndroid
          ? ListView(
              children: <Widget>[
                TileProductCompany(),
                TileProductCompany(),
                TileProductCompany(),
                TileProductCompany(),
                TileProductCompany(),
                TileProductCompany(),
                TileProductCompany(),
                TileProductCompany(),
                TileProductCompany(),
                TileProductCompany(),
              ],
            )
          : ListView(),
    );
  }
}
