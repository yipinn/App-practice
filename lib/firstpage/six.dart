import 'package:flutter/material.dart';
import 'package:qooname/firstpage/eight.dart';

class six extends StatefulWidget {
  const six({super.key, required String text});

  @override
  State<six> createState() => _sixState();
}

class _sixState extends State<six> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(children: [
        Center(
          child: Text(
            "What's your goal?",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Align(
          alignment: Alignment.center,
        ),
        Container(
          child: Text(
            'it will help us to choose a best',
            style: TextStyle(color: Colors.black54, fontSize: 15),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          child: Text(
            'program for you',
            style: TextStyle(
              color: Colors.black54,
              fontSize: 15,
            ),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Stack(alignment: Alignment.topCenter, children: [
          Center(
            child: Container(
                width: 300,
                height: 500,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Color.fromARGB(255, 120, 165, 255),
                    border: Border.all(
                      color: Color.fromARGB(115, 248, 248, 248),
                    ))),
          ),
          Container(
            width: 300,
            height: 490,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: Color.fromARGB(255, 120, 165, 255),
              border: Border.all(
                color: const Color.fromARGB(115, 248, 248, 248),
              ),
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 18.0),
                child: Text(
                  'the right way',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 15),
                ),
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: Container(
              width: 285,
              height: 455,
              child: Image.asset('image/fitness.png', fit: BoxFit.cover),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(115, 248, 248, 248), //外框色
                  width: 1.0,
                ),
              ),
            ),
            
          ),
        ]),SizedBox(height: 35,),
        Container(child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                gradient: LinearGradient(
                                    begin: Alignment.centerLeft, //漸層背景
                                    end: Alignment.centerRight,
                                    colors: [
                            Color.fromARGB(255, 194, 228, 255),
                            Color.fromARGB(255, 23, 128, 255),
                          ])),
                            child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  transitionDuration: Duration(milliseconds: 500),
                  pageBuilder: (_, animation, __) => eigth(),
                  transitionsBuilder: (_, animation, __, child) {
                    return SlideTransition(
                      position: Tween<Offset>(
                        begin: Offset(1.0, 0.0),
                        end: Offset(0.0, 0.0),
                      ).animate(animation),
                      child: child,
                    );
                  },
                ),
              );
            },
                                child: Text(
                                  'Confirm',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                style: ButtonStyle(
                                  //按鈕背景漸層,所以背景要設透明
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.transparent),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(30.0), 
                                    ),
                                  ),
                                  minimumSize: MaterialStateProperty.all<Size>(
                                    Size(340, 55),
                                  ),
                                )))),)
      ]),
    );
  }
}
