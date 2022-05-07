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
