import 'package:flutter/material.dart';
import 'package:latihan_2/model/listsong.dart';

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
            return Card(
              color: Colors.grey[400],
              child: ListTile(
                title: Text(song.title),
                subtitle: Text(song.artist),
                leading: Image.network(song.imagesUrl),
                trailing: Icon(Icons.favorite_outline_rounded),
              ),
            );
          }),
    );
  }
}
