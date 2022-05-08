class Memo {
  final int id;
  final String title;
  final String text;
  final String createTime;

  Memo({required this.id, required this.title, required this.text, required this.createTime});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'text': text,
      'createTime': createTime,
    };
  }

  // 각 memo 정보를 보기 쉽도록 print 문을 사용하여 toString을 구현하세요
  @override
  String toString() {
    return 'Memo{id: $id, title: $title, text: $text, createTime: $createTime,}';
  }
}
