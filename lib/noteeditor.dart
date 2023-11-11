import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:notesapp2/widgets1.dart';
class Noteedit extends StatefulWidget {


 const  Noteedit({Key? key}) : super(key: key) ;

  get titleController => null;

  get mainController => null;

  @override
  State<Noteedit> createState() => _NoteeditState();
}

class _NoteeditState extends State<Noteedit> {
  String date = DateTime.now().toString();

  TextEditingController titleController = TextEditingController();

  TextEditingController mainController = TextEditingController();

  int color_id = Random().nextInt(appStyle.cardsColors.length);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appStyle.cardsColors[color_id],
      appBar: AppBar(
        backgroundColor: appStyle.cardsColors[color_id],
        elevation: 0.0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text("Add new notes",style: TextStyle(
          color: Colors.black45,
          fontSize: 15,
        ),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextField(
              controller: widget.titleController,
              decoration: InputDecoration(
                border: InputBorder.none,

                labelText: "Note title",
              ),
            ),
            Text(date,style: appStyle.dateTitle,),
            TextField(
              controller: widget.mainController,
              decoration: InputDecoration(
                labelText: "Note content",
              ),

            ),

        ],),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(onPressed: ()async{
          FirebaseFirestore.instance.collection('notes').add({
            "note_title":titleController.text,
            'creation_date':date,
            "note_content":mainController.text,
            "color_id":color_id,
          }).then((value){
            print(value.id);
            Navigator.pop(context);
          }).catchError((error)=>print("failed to add and new note due to $error"));

        },child: Icon(Icons.save),
        ),
      ),
    );
  }
}
