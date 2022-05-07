import 'package:flutter/material.dart';
import 'package:flutterproject/model/memo.dart';

class AddNotePage extends StatefulWidget {
  final Memo? note;
  const AddNotePage({Key? key,  this.note,}) : super(key: key);

  @override
  _AddNotePageState createState() => _AddNotePageState();
}

class _AddNotePageState extends State<AddNotePage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
