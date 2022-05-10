import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/screens/note_editor.dart';
import 'package:flutterproject/screens/note_reader.dart';
import 'package:flutterproject/widgets/note_card.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutterproject/config/palette.dart';

class NotePersonal extends StatefulWidget {
  const NotePersonal({Key? key}) : super(key: key);

  @override
  State<NotePersonal> createState() => _NotePersonalState();
}

class _NotePersonalState extends State<NotePersonal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.mainColor,
      appBar: AppBar(
        elevation: 0.0,
        title: Text('note_personal'),
        centerTitle: true,
        backgroundColor: Palette.mainColor,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                "Your recent Notes",
                style: GoogleFonts.roboto(
                    color:Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                ),
            ),
            SizedBox(height: 20.0,
            ),
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance.collection("Notes").snapshots(),
                builder: (context, AsyncSnapshot<QuerySnapshot> snapshot){
                  //checking the conncetion state, if we still load the data we can display a progress
                  if(snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator(),
                    );
                  }
                  if(snapshot.hasData) {
                    return GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                      children: snapshot.data!.docs
                          .map((note) => noteCard((){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      NoteReaderScreen(note),
                                ));
                      }, note))
                          .toList(),
                    );
                  }
                  return Text("there's no Notes", style: GoogleFonts.nunito(color: Colors.white), );
                },
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => NoteEditorScreen()));
          },
          label: Text("Add Note"),
          icon: Icon(Icons.add),
      ),
    );
  }
} 