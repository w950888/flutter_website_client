import 'package:flutter/material.dart';
import 'package:flutter100/pages/home_banner.dart';
import 'package:flutter100/service/product.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          BannerWidget(),
          RaisedButton(
            child: Text("获取产品数据"),
            onPressed: () {
              getProductResult();
            },
          )
        ],
      ),
    );
  }
}
