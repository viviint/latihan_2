import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_2/model/listsong.dart';
import 'package:latihan_2/secondpage.dart';

class Songlist extends StatelessWidget {
  const Songlist({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: listsong.length,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            Song song = listsong[index];
            return GestureDetector(
              onTap: () => Get.to(Secondpage(
                detail: listsong[index],
              )),
              child: Card(
                color: Colors.blueGrey[200],
                child: ListTile(
                  title: Text(song.title),
                  subtitle: Text(song.artist),
                  leading: Image.network(song.imagesUrl),
                  trailing: Icon(
                    Icons.favorite,
                    color: Colors.green,
                  ),
                ),
              ),
            );
          }),
    );
  }
}
