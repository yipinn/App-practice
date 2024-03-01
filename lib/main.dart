
import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:qooname/firstpage/firstpage.dart';





void main() {
  
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      color: Colors.white,
      theme: ThemeData(useMaterial3: false),
      home: Login(), 
    );
  }
}


class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
          Container(height: 370),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Flutter',
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: 'Fit',
                  style: TextStyle(
                      fontSize: 40,
                      height: 1.0,
                      color: Color.fromARGB(255, 129, 160, 228),
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Everybody can train',
                  style: TextStyle(
                      fontSize: 21,
                      color: Color.fromARGB(255, 147, 144, 144),
                      height: 1.0),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 300,
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color.fromARGB(255, 194, 228, 255),
                            Color.fromARGB(255, 23, 128, 255),
                          ])),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>firstpagestate(
                                    text: '第一頁',
                                  )),
                        );
                      },
                      child: Text(
                        'Get started',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      style: ButtonStyle(
                        //按鈕背景漸層
                        backgroundColor:
                            MaterialStateProperty.all(Colors.transparent),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0), //容器圓角設定
                          ),
                        ),
                        minimumSize: MaterialStateProperty.all<Size>(
                          Size(350, 60),
                        ),
                      )))),
        ])));
  }
}
