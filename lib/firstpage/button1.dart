import 'package:flutter/material.dart';

class button1 extends StatefulWidget {
  const button1({super.key, required String text});

  @override
  State<button1> createState() => _button1State();
}

class _button1State extends State<button1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(''),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Column(children: [
          Align(
            alignment: Alignment(-0.8, 0.1),
            child: Text(
              'Welcome Back',
              style: TextStyle(
                color: Colors.black45,
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.8, -1.0),
            child: Text(
              'Stefanie',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 21,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Stack(children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 365,
                height: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.0),
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft, //漸層背景
                        end: Alignment.centerRight,
                        colors: [
                          Color.fromARGB(255, 248, 195, 245),
                          Color.fromARGB(255, 181, 138, 255),
                        ])),
              ),
            ),
            Align(
              alignment: Alignment(-0.6, -0.1),
              child: Container(
                margin: EdgeInsets.only(top: 20.0),
                child: Text(
                  'BMI (Body Mass Index)',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
            Container(
              alignment: Alignment(-0.66, -0.1),
              margin: EdgeInsets.only(top: 45.0),
              child: Text(
                'You have a healthy weight',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: 180,
              height: 55,
              margin: EdgeInsets.only(left: 50.0, top: 80.0),
              alignment: Alignment(0.0, -0.1),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Color.fromARGB(255, 237, 136, 255)),
              child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                  child: Text(
                    'View more',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ),
            ),
            Container(
              width: 80,
              height: 80,
              margin: EdgeInsets.only(top: 35.0, left: 280),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 12,
                ),
              ),
              alignment: Alignment(-0.15, -0.1),
              child: Text(
                '20.1',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            )
          ]),
          SizedBox(
            height: 32,
          ),
          Stack(
            children: [
              Container(
                alignment: Alignment(-0.8, -0.1),
                width: 365,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Color.fromARGB(125, 173, 224, 255)),
                child: Text(
                  "Today's target",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                alignment: Alignment(-0.0, 0.0),
                width: 120,
                height: 55,
                margin: EdgeInsets.only(left: 220.0, top: 21.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Color.fromARGB(121, 94, 92, 178)),
                child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                     
                    ),
                  child: Text(
                    'check',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 25),
                child: Text(
                  'Latest workout',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 165),
                alignment: Alignment(-0.12, 0.0),
                child: Text(
                  'see more',
                  style: TextStyle(
                      color: const Color.fromARGB(255, 67, 62, 62),
                      fontWeight: FontWeight.w300,
                      fontSize: 18),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 18,
          ),
          Center(
            child: Row(
              children: [
                Container(
                    width: 70,
                    height: 70,
                    margin: EdgeInsets.only(left: 25),
                   
                    child: Image.asset(
                      'image/hi.jpg',
                    )),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        margin: EdgeInsets.only(left: 2),
                        child: Text(
                          'Fullbody Workout',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ),
                    ),
                    Container(
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          '180 Calories Burn I 20 minutes',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: 250,
                      height: 15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: const Color.fromARGB(255, 231, 178, 241)),
                    ),
                  ],
                ),
                Container(
                    margin: EdgeInsets.only(left: 13),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.purple, width: 2),
                        borderRadius: BorderRadius.circular(20)),
                    child: Icon(
                      Icons.chevron_right_outlined,
                      color: Colors.purple,
                      size: 25,
                    )),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                  width: 70,
                  height: 70,
                  margin: EdgeInsets.only(left: 25),
                
                  child: Image.asset(
                    'image/hi.jpg',fit: BoxFit.cover,
                  )),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: EdgeInsets.only(left: 2),
                      child: Text(
                        'Lowerbody',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ),
                  ),
                  Container(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        '180 Calories Burn I 30 minutes',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: 250,
                    height: 15,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: const Color.fromARGB(255, 247, 217, 252)),
                  ),
                ],
              ),
              Container(
                  margin: EdgeInsets.only(left: 13),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.purple, width: 2),
                      borderRadius: BorderRadius.circular(20)),
                  child: Icon(
                    Icons.chevron_right_outlined,
                    color: Colors.purple,
                    size: 25,
                  )),
              SizedBox(
                height: 5,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(children: [
            Container(
                width: 70,
                height: 70,
                margin: EdgeInsets.only(left: 25),
                child: Image.asset(
                  'image/hi.jpg',fit: BoxFit.fill,
                )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: EdgeInsets.only(left: 2),
                    child: Text(
                      'Ab Workout',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      '180 Calories Burn I 20 minutes',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: 250,
                  height: 15,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: const Color.fromARGB(255, 242, 212, 247)),
                ),
              ],
            ),
            Container(
                margin: EdgeInsets.only(left: 13),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.purple, width: 2),
                    borderRadius: BorderRadius.circular(20)),
                child: Icon(
                  Icons.chevron_right_outlined,
                  color: Colors.purple,
                  size: 25,
                )),
            SizedBox(
              height: 15,
            ),
          ])
        ]));
  }
}
