import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:notesapp2/noteeditor.dart';
import 'package:notesapp2/startnotes.dart';


Future main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const Notes(),
  ));
}

