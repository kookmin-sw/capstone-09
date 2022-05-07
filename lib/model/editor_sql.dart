class EditorSql{
  final int id;
  final String title;
  final String note;
  final String date;
  EditorSql({required this.id,required this.title, required this.note, required this.date});

  Map<String, dynamic> toMap() {
    return{
      'id':id,
      'title':title,
      'note':note,
      'date':date,
    };
  }
  @override
  String toString(){
    return 'Editorsql{id: $id, title: $title, note: $note, date $date}';
  }
}