import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../config/palette.dart';
import '../data/DBHelper.dart';
import '../model/memo.dart';

class PersonalNotePage extends StatefulWidget {
  const PersonalNotePage({Key? key}) : super(key: key);

  @override
  _PersonalNotePageState createState() => _PersonalNotePageState();
}

class _PersonalNotePageState extends State<PersonalNotePage> {
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
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            // Expanded(
            //   child: GridView.builder(
            //     itemCount: DBHelper().,
            //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //           crossAxisCount: 2),
            //       itemBuilder: itemBuil),
            // )
          ],
        ),
      ),
    );
  }
}
//   ListView.builder(
//   itemCount: snapshot.data?.length,
//   itemBuilder: (BuildContext context, int index) {
//     Memo item = snapshot.data![index];
//     return Dismissible(
//       key: UniqueKey(),
//       onDismissed: (direction) {
//         DBHelper().deleteMemo(item.id);
//         setState(() {});
//       },
//       child: Center(child: Text(item.title)),
//     );
//   },
// );
