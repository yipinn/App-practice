

import 'package:flutter/material.dart';  //登入頁面
import 'package:qooname/firstpage/firstpage.dart';
import 'package:qooname/firstpage/five.dart';



class seven extends StatefulWidget {
  const seven({super.key, required String text});

  @override
  State<seven> createState() => _sevenState();
}

class _sevenState extends State<seven> {
  TextEditingController passWordController = TextEditingController();
  TextEditingController emailController =TextEditingController();
 
 

  bool isVisibile = false;
  bool isChecked = false;

  switchVisible() {
    isVisibile = !isVisibile;
    setState(() {});
  }

  @override
  void dispose() {
  
    super.dispose();

    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 100.0),
        child:SingleChildScrollView(child: Column(
          children: [
            Center(
              child: Text(
                'Hey there.',
                style: TextStyle(
                    color: Colors.black45,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              'Welcome Back',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
                padding:
                    EdgeInsets.only(left: 30, right: 30, top: 5, bottom: 5),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextField(
                         controller: emailController,
                        decoration: InputDecoration(
                          hintText: 'Email',
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      TextField(
                        controller: passWordController,
                        obscureText: isVisibile,
                        decoration: InputDecoration(
                          hintText: 'password',
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: IconButton(
                              onPressed: switchVisible,
                              icon: Icon(
                                  isVisibile
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  size: 30,
                                  color: Colors.grey)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Forgot your password',
                        style: TextStyle(
                            color: Colors.black38,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      ),
                    ])),
            SizedBox(
              height: 50,
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    height: 55,
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
                        onPressed: (){
                          String email = emailController.text;
                          String password = passWordController.text;
                          if(email == '6666' && password == '12345'){
                             
                            Navigator.push(
                              context,
                             PageRouteBuilder(
                                    transitionDuration:
                                        Duration(milliseconds: 500),
                                    pageBuilder: (_, animation, __) =>
                                        firstpagestate(text: '說明'),
                                    transitionsBuilder:
                                        (_, animation, __, child) {
                                      return SlideTransition(
                                          position: Tween<Offset>(
                                                  begin: Offset(1.0, 0.0),
                                                  end: Offset(0.0, 0.0))
                                              .animate(animation),
                                          child: child);
                                    })
                            );
                          }else{
                          Navigator.push(
                              context,
                             PageRouteBuilder(
                                    transitionDuration:
                                        Duration(milliseconds: 500),
                                    pageBuilder: (_, animation, __) =>
                                        five(text: '說明'),
                                    transitionsBuilder:
                                        (_, animation, __, child) {
                                      return SlideTransition(
                                          position: Tween<Offset>(
                                                  begin: Offset(1.0, 0.0),
                                                  end: Offset(0.0, 0.0))
                                              .animate(animation),
                                          child: child);
                                    })
                            );
                          }
                         
                
                           
                          
                        },
                        child: Text(
                          'Login',
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
                              borderRadius:
                                  BorderRadius.circular(30.0), //容器圓角設定
                            ),
                          ),
                          minimumSize: MaterialStateProperty.all<Size>(
                            Size(350, 60),
                          ),
                        )))),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 8.0, left: 60),
                    child: Divider(
                      thickness: 1,
                      color: Colors.black38,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.0),
                  child: Text(
                    'Or',
                    style: TextStyle(fontSize: 17, color: Colors.black54),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.0, right: 60),
                    child: Divider(
                      thickness: 1,
                      color: Colors.black38,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 11.0),
                  decoration: BoxDecoration(
                    color: Colors.transparent, //conatiner內部透明
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(
                      color: Colors.black45, //外框色
                      width: 2.0,
                    ),
                  ),
                  child: Image.asset('image/Google.png', width: 45, height: 65),
                ),
                Padding(padding: EdgeInsets.all(10.0)),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 11.0),
                  decoration: BoxDecoration(
                    color: Colors.transparent, //conatiner內部透明
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(
                      color: Colors.black45, //外框色
                      width: 2.0,
                    ),
                  ),
                  child: Image.asset(
                    'image/facebook.png',
                    width: 45,
                    height: 65,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: "Don't have an account yet ?  ",
                        style: TextStyle(
                          fontSize: 12,
                          color: const Color.fromARGB(255, 212, 150, 150),
                        ),
                      ),
                    ]),
                  ),
                ),
                Container(
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageRouteBuilder(
                                  transitionDuration:
                                      Duration(milliseconds: 500),
                                  pageBuilder: (_, animation, __) =>
                                      five(text: ''),
                                  transitionsBuilder:
                                      (_, animation, __, child) {
                                    return SlideTransition(
                                        position: Tween<Offset>(
                                                begin: Offset(1.0, 0.0),
                                                end: Offset(0.0, 0.0))
                                            .animate(animation),
                                        child: child);
                                  }));
                        },
                        child: Text(
                          'Register',
                          style: TextStyle(color: Colors.purple, fontSize: 12),
                        )))
              ],
            )
          ],
        ),
      ),
    ));
  }
}
