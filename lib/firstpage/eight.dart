import 'package:flutter/material.dart';

import 'package:qooname/firstpage/ten.dart';

class eigth extends StatefulWidget {
  const eigth({super.key});

  @override
  State<eigth> createState() => _eigthState();
}

class _eigthState extends State<eigth> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 70),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 300,
                height: 300,
                child: Image.asset('image/too.png', fit: BoxFit.cover),
                
              ),
            ),
            Container(
              child: Text(
                'Welcome, User',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Text(
                "You are all set now,let's reach your goals",
                style: TextStyle(color: Colors.black54, fontSize: 13),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Container(
              child: Text(
                "together with us",
                style: TextStyle(color: Colors.black54, fontSize: 13),
              ),
            ),
            SizedBox(
              height: 250,
            ),
            Container(
              child: Align(
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
                  pageBuilder: (_, animation, __) => ten(),
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
                            'GO To Home',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          style: ButtonStyle(
                            //按鈕背景漸層,所以背景要設透明
                            backgroundColor:
                                MaterialStateProperty.all(Colors.transparent),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                            minimumSize: MaterialStateProperty.all<Size>(
                              Size(340, 55),
                            ),
                          )))),
            )
          ],
        ),
      ),
    );
  }
}
