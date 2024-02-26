import 'package:flutter/material.dart';
import 'package:qooname/firstpage/seven.dart';
import 'package:qooname/firstpage/six.dart';
import 'package:shared_preferences/shared_preferences.dart';


class five extends StatefulWidget {
  const five({super.key, required String text});

  @override
  State<five> createState() => _fiveState();
}

class _fiveState extends State<five> {
  TextEditingController passWordController = TextEditingController();
    TextEditingController firstNameController = TextEditingController();
    TextEditingController lastNameController = TextEditingController();
  TextEditingController passWordController1 = TextEditingController();
  TextEditingController emailController = TextEditingController();
  
  
 
  bool isChecked = false;
 bool isVisibile = false;



  switchVisible() {
    isVisibile = !isVisibile;
    setState(() {});
  }

    @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
   
    passWordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(''),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Center(
            child: SingleChildScrollView(child: Column(
          children: [
            Text(
              'Hey there',
              style: TextStyle(
                  fontSize: 19,
                  color: Colors.black54,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              'create an account',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 30, right: 30, top: 10, bottom: 10),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                       controller: firstNameController,
                      decoration: InputDecoration(
                        hintText: 'First Name',
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                       controller: lastNameController,
                      decoration: InputDecoration(
                        hintText: 'Last Name',
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                       controller: emailController,
                      decoration: InputDecoration(
                        hintText: 'Email',
                        prefixIcon: Icon(Icons.mail),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0),
                          
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    TextField(
                      
                    controller: passWordController,
                    obscureText: isVisibile,
                      decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0),),
                      hintText: 'Password',
                      prefixIcon: Icon(Icons.lock),
                      
                      suffixIcon: IconButton(
                          onPressed: switchVisible,
                          icon: Icon(isVisibile ? Icons.visibility_off : Icons.visibility, size: 30, color: Colors.grey)),
                    )),
                    SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value ?? false;
                            });
                          },
                          activeColor: Colors.purple, // 勾選顏色
                          checkColor: Colors.white,
                        ),
                        Text(
                          'By continuing you accept our privact and\nTerm of Use',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                gradient: LinearGradient(
                                    begin: Alignment.centerLeft, //漸層背景
                                    end: Alignment.centerRight,
                                    colors: [
                                      Color.fromARGB(255, 227, 231, 238),
                                      Color.fromARGB(255, 138, 192, 255),
                                    ])),
                            child: ElevatedButton(
                                onPressed: () async {
                                  String first = firstNameController.text;
                                  String last =lastNameController.text;
                                  String email = emailController.text;
                                  String password = passWordController1.text;

                
                await saveRegistrationInfo(first,last, email, password,);

                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                    transitionDuration:
                                        Duration(milliseconds: 500),
                                    pageBuilder: (_, animation, __) =>
                                        six(text: '說明'),
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
                                },
                                child: Text(
                                  'Register',
                                  style: TextStyle(
                                      fontSize: 20,
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
                                ))))
                  ]),
            ),
            SizedBox(
              height: 18,
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
                  child: Text('Or',style: TextStyle(fontSize: 17,color: Colors.black54),),
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
              height: 20,
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
            SizedBox(height: 40,),
            Row(mainAxisAlignment: MainAxisAlignment.center,children: [Container(child:RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Already have an account? ',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      ),
                ),
          ]),
          ),),Container(child: GestureDetector(
            onTap: () { 
               Navigator.push(
         context,
           MaterialPageRoute( //登入
               builder: (context) =>seven()
               ),
                 );},
            child: Text(
              'Loding',
              style: TextStyle(
                color: Colors.purple, 
                fontSize: 15,
              ),)
            ))],)
            ],                )
        )));
  } 
  
  Future<void> saveRegistrationInfo(String first,String last, String email, String password) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
  preferences.setString('email', '6666');
  preferences.setString('password','12345');

 
    
  }
}

