import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tupuca_clone/src/const/global_const.dart';
import 'package:tupuca_clone/src/view/home/widgets/category_icon.dart';
import 'package:tupuca_clone/src/view/home/widgets/custom_drawer.dart';
import 'package:tupuca_clone/src/view/home/widgets/custom_top_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:tupuca_clone/src/view/home/widgets/list_tile_company.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool buttonValue = false;
  bool upDirection = true, flag = true;
  ScrollController _controller;

  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  ];
  int _current = 0;

  @override
  void initState() {
    super.initState();
    _controller = ScrollController()
      ..addListener(() {
        upDirection =
            _controller.position.userScrollDirection == ScrollDirection.forward;

        if (upDirection != flag) setState(() {});

        flag = upDirection;
        print(flag);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "ALL MERCHANTS",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.normal),
            ),
            Text(
              "J.c estação de serviço, Rua",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.normal),
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: null),
          IconButton(icon: Icon(Icons.search), onPressed: null),
          IconButton(icon: Icon(FontAwesomeIcons.filter), onPressed: null),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.white,
              child: Icon(
                Icons.map,
                color: GlobalConst.primaryColor,
              ),
            ),
            AnimatedContainer(
              duration: Duration(milliseconds: 250),
              width: !flag ? 60 : 120,
              height: 60,
              decoration: BoxDecoration(
                  color: GlobalConst.primaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                      icon: Icon(
                        Icons.message,
                        color: Colors.white,
                      ),
                      onPressed: () {}),
                  flag ? Text(
                    "COURRIER",
                    style: TextStyle(color: Colors.white),
                  ):Container()
                ],
              ),
            )
          ],
        ),
      ),
      body: ListView(
        controller: _controller,
        children: <Widget>[
          Row(
            children: <Widget>[
              Flexible(
                  child: CustomButtonTop(
                active: true,
                icon: Icons.drive_eta,
                text: "Home Devivery",
              )),
              Flexible(
                  child: CustomButtonTop(
                active: false,
                icon: Icons.work,
                text: "Subscription",
              )),
            ],
          ),
          Container(
            height: 100,
            child: Stack(
              children: <Widget>[
                CarouselSlider(
                  items: imgList
                      .map((item) =>
                          Image.network(item, fit: BoxFit.cover, width: 1000.0))
                      .toList(),
                  options: CarouselOptions(
                      height: 100,
                      autoPlay: true,
                      aspectRatio: 2.0,
                      viewportFraction: 1,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      }),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: imgList.map((url) {
                      int index = imgList.indexOf(url);
                      return Container(
                        width: 8.0,
                        height: 8.0,
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 2.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _current == index
                              ? Color.fromRGBO(255, 255, 255, 0.9)
                              : Color.fromRGBO(0, 0, 0, 0.4),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 140,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                CategoryIcon(
                  icon: FontAwesomeIcons.palette,
                  text: "Food",
                ),
                CategoryIcon(
                  icon: FontAwesomeIcons.earlybirds,
                  text: "Grocery",
                ),
                CategoryIcon(
                  icon: FontAwesomeIcons.cloudMeatball,
                  text: "Vestuário",
                ),
                CategoryIcon(
                  icon: FontAwesomeIcons.cloudUploadAlt,
                  text: "Drinks",
                ),
                CategoryIcon(
                  icon: FontAwesomeIcons.cloudUploadAlt,
                  text: "Drinks",
                ),
                CategoryIcon(
                  icon: FontAwesomeIcons.cloudUploadAlt,
                  text: "Drinks",
                ),
                CategoryIcon(
                  icon: FontAwesomeIcons.cloudUploadAlt,
                  text: "Drinks",
                ),
              ],
            ),
          ),
          ListTileCompany(),
          ListTileCompany(),
          ListTileCompany(),
          ListTileCompany(),
        ],
      ),
    );
  }
}
