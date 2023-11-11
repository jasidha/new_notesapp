import 'package:flutter/material.dart';
import 'package:notesapp2/noteeditor.dart';
import 'package:notesapp2/notelead.dart';
import 'package:notesapp2/widgets1.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class Notes extends StatelessWidget {
  const Notes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Notes",style: TextStyle(
            color: Colors.black,
          ),),
        ),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.start,
        children: [
        Text("Your notes",style:
        TextStyle(
          color: Colors.black,
          fontSize: 15,

        ),),


          FloatingActionButton.extended(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Noteedit(),));
          }, label: Text("Add Notes")),
          Icon(Icons.add),

        ],),
    );
  }
}
