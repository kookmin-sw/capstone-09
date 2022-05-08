# 22-05-08 version
* Neohthollajo0411은 0411 코드임 나중에 지울 예정
* lib가 추가한 코드들임
* pubspec.yaml도 lib에 맞게 dependency 작성함

1. database 같은 경우 sqlite사용
2. database의 attribute 같은 경우 model폴더 안 memo.dart에 구현
3. database 사용하는 구체적인 구현은 data폴더 안 DBHelper.dart에 있다.
4. database를 사용하는 screen 폴더의 personal_note_personal.dart, personal_note_reader 같은 경우는 아직 구현 못함
5. 또한 api를 한 번만 불러오게 바꿔서 screen 폴더 내의 loading2.dart와 recommend_cloth.dart같은 경우 추후에 삭제 예정
6. 새로은 옷 추천 코드는 ex폴더 내의 not_loading_recommend.dart에 있다.
7. 또한 weather_screen.dart와 not_loading_reommend.dart의 의존이 강화됨 이점 유의 바람

# 22-05-08 ver2
* 0411 폴더 삭제
* 로그인 유지기능 로그아웃 기능 구현
* 하지만 잘 되는지는 장담 불가 일단 내 애뮬에선 잘됨

1. main.dart에 코드 추가해서 로그인 유지되게 함
2. setting.dart에 버튼 추가해서 로그아웃 되게 했음 setting에서 4개 중 한 개의 버튼은 로그아웃임
3. 일단 로그인, 회원가입 잘 되는 것은 확인

# 22-05-09
* sqlfite 활용해서 개인 메모 부분 구현.
* not_loading_recommend.dart위치를 이동함 ex -> screen
* loading2.dart와 cloth_recommend.dart의 경우 주석으로 비활성화 처리함 차후 삭제 예정

1. 개인 메모 파트는 [링크](https://github.com/JohannesMilke/sqflite_database_example/blob/master/lib/page/edit_note_page.dart) 이 분 영상과 코드를 참고해서 만들었다. 그래서 어느 정도 다듬어야 한다.
2. 아이콘 깨지는 문제는 인터넷 찾아보면서 이것저것 해보았는데 다 안된다. 왜이러는지 모르겠다.
3. 다른 기능들은 애뮬에서 어플을 지우고 다시 설치해서 해 보았는데 잘 된다.
4.<br>
**model: memo.dart**<br>
**screen: personal_note_personal.dart, add_note.dart personal_note_reader.dart**<br>
**widget: note_form.dart, noteCardPersonal.dart**<br>
**data: DBHelper.dart**<br>
add_note.dart의 경우에도 삭제 예정<br>
5. 며칠 동안 db구현하면서 계속 닫히는 문제가 발생 최대한 보편적인 틀에 맞추어서 하려고 하였으나, 계속 문제가 발생해서 db닫는 코드를 지웠다.
