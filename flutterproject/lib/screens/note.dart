import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class note extends StatefulWidget {
  const note({ Key? key }) : super(key: key);

  @override
  State<note> createState() => _noteState();
}

class _noteState extends State<note> {
  void initstate() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Note'),
      ),
      
    );
  }
}