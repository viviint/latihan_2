import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_2/secondpage.dart';
import 'package:latihan_2/songlist.dart';

class Listpage extends StatelessWidget {
  const Listpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple[600],
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 50,
          backgroundColor: Colors.purple[600],
          shadowColor: Colors.transparent,
          leading: Icon(
            Icons.arrow_back,
          ),
        ),
        body: ListView(shrinkWrap: true, children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 150,
                child: Center(
                  child: Text(
                    "Liked Songs",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
              Positioned(
                  left: 110,
                  right: 110,
                  bottom: 12,
                  child: Container(
                    width: 50,
                    height: 37,
                    child: Center(
                      child: Text(
                        "Shuffle Play",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w300),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.green,
                    ),
                  )),
            ],
          ),
          Songlist(),
        ]));
  }
}
