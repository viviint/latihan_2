import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:latihan_2/songlist.dart';

class Listpage extends StatelessWidget {
  const Listpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(""),
          leading: Icon(
            Icons.arrow_back,
          ),
        ),
        body: ListView(
          shrinkWrap: true,
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 160,
                  decoration: BoxDecoration(
                    color: Colors.purple[700],
                  ),
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
                    bottom: 20,
                    child: Container(
                      width: 50,
                      height: 37,
                      child: Center(
                        child: Text(
                          "Shuffle Play",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.green,
                      ),
                    ))
              ],
            ),
            Songlist(),
          ],
        ));
  }
}
