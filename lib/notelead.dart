import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';
import 'package:notesapp2/widgets1.dart';
class Noteleader extends StatefulWidget {
   Noteleader(this.doc,{Key? key}) : super(key: key);
  QueryDocumentSnapshot doc;

  @override
  State<Noteleader> createState() => _NoteleaderState();
}

class _NoteleaderState extends State<Noteleader> {

  @override
  Widget build(BuildContext context) {
    int color_id=widget.doc['color_id'];

    return Scaffold(
      backgroundColor: appStyle.cardsColors[color_id],
      appBar: AppBar(
        backgroundColor: appStyle.cardsColors[color_id],
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.doc["note_title"],
              style: appStyle.maintiltle,
            ),
          ),
          SizedBox(height: 4,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.doc["creation_date"],
              style: appStyle.dateTitle,
            ),
          ),
          SizedBox(height: 8,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.doc["note_content"],
              style: appStyle.maincontent,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],),
      ),


    );
  }
}
