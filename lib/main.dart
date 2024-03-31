import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: '2nd App Seminar',
      home: WidgetApp(),
    );
  }
}

class WidgetApp extends StatelessWidget {
  const WidgetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 150,
          toolbarHeight: 60,
          leading: const SizedBox(
            height: 29,
            width: 132,
            child: Padding(
              padding: EdgeInsets.fromLTRB(16, 19, 0, 0),
              child: Text(
                  'Newbie Seminar',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    height: 1.333,
                    letterSpacing: -0.9,
                    ),
                  ),
            ),
          ),
          backgroundColor: const Color(0xff0D3307),
        ),
        body: const SingleChildScrollView(
          child: Center(
            child: PageView(),
            ),
        ),
      ),
    );
  }
}

class PageView extends StatelessWidget {
  const PageView  ({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 47,),
          const Text(
            '로그인',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 36,
              height: 0.667,
              letterSpacing: -1.8,
              color: Color(0xff333333),
            ),
          ),
          const SizedBox(height: 17,),
          Container(
            height: 1.0,
            width: 375.0,
            color: const Color(0xffDDDFE1),
          ),
          const SizedBox(height: 22,),
          const TextFieldBase(title: '아이디를 입력해주세요'),
          const SizedBox(height: 17,),
          const TextFieldBase(title: '비밀번호를 입력해주세요',),
          const SizedBox(height: 17,),
          SizedBox(
            height: 48,
            width: 333,
            child: TextButton(
              onPressed: (){},
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: const BorderSide(
                      color: Color(0xffDDDFE1),
                      width: 1.0,
                    )
                  )
                ),
                backgroundColor: MaterialStateProperty.all(const Color(0xff277245)),
              ), 
              child: const Text(
                '로그인',
                style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  height: 1.5,
                  letterSpacing: -1.2,
                ),
              ),
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RowButtonBase(title: '회원가입'),
              SizedBox(width: 24,),
              RowButtonBase(title: '아이디 찾기'),
              SizedBox(width: 24,),
              RowButtonBase(title: '비밀번호 찾기')
            ]
          ),
          const ColumnButtonBase(title: '카이스트 통합인증으로 로그인/가입'),
          const SizedBox(height: 12,),
          const ColumnButtonBase(title: '페이스북으로 로그인/가입'),
          const SizedBox(height: 12,),
          const ColumnButtonBase(title: '트위터로 로그인/가입'),
        ],
    );
  }
}


class TextFieldBase extends StatelessWidget{
  const TextFieldBase({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 335,
      height: 48,
      child: TextField(
          decoration: InputDecoration(
            hintText: title,
            hintStyle: const TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      letterSpacing: -0.8,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffDDDFE1)
                      ),
            enabledBorder: OutlineInputBorder( 
              borderSide: const BorderSide(
                color: Color(0xffDDDFE1),
                width: 1.0,
                ),
            borderRadius: BorderRadius.circular(4),
            ),
          ),
        ),
      );
  }
}

class RowButtonBase extends StatelessWidget{
  const RowButtonBase({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){},
      child: Text(
          title,
          style: const TextStyle(
            color: Color(0xff666666),
            fontWeight: FontWeight.w500,
            fontSize: 12,
            height: 1.5,
            letterSpacing: -0.3,
          ),
        ),
    );
  }
}

class ColumnButtonBase extends StatelessWidget{
  const ColumnButtonBase({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context){
    return SizedBox(
      width: 335,
      height: 48,
      child: TextButton(
        onPressed: (){}, 
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
              side: const BorderSide(
                color: Color(0xff277245),
                width: 1.0,
              )
            )
          )
        ),
        child: Text(
          title,
          style: const TextStyle(
            color: Color(0xff277245),
            fontWeight: FontWeight.w500,
            fontSize: 16,
            height: 1.5,
            letterSpacing: -0.8,
          ),
        )
      ),
    );
  }
}