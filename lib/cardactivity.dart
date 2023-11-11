import 'package:flutter/material.dart';
import 'package:notesapp2/widgets1.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
Widget noteCard (Function() ?onTap,QueryDocumentSnapshot doc){
  return
    InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: appStyle.cardsColors[doc["color_id"]],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(doc["note_title"],
                  style: appStyle.maintiltle,
                ),
                SizedBox(height: 4,),
                Text(
                  doc["creation_date"],
                  style: appStyle.dateTitle,
                ),
                SizedBox(height: 8,),
                Text(
                  doc["note_content"],
                  style: appStyle.maincontent,
                  overflow: TextOverflow.ellipsis,
                )
              ],),
          ),

        ),
      ),
    );
}
