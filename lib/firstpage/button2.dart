import 'package:flutter/material.dart';

class button2 extends StatefulWidget {
  const button2({super.key});

  @override
  State<button2> createState() => _button2State();
}

class _button2State extends State<button2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        body: Column(children: [
      Stack(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 80),
              width: 350,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22.0),
                color: Color.fromARGB(255, 238, 209, 219),
              ),
            ),
          ),
          Positioned(
            left: 50,
            top: 100,
            child: ClipOval(
              child: Image.asset(
                'image/hi.jpg',
                fit: BoxFit.fill,
                width: 60,
                height: 60,
              ),
            ),
          ),
          Positioned(
            left: 130,
            top: 110,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Reminder!',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'Next Photos Fall On July 08 ',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ],
            ),
          ),
        ],
      ),
      SizedBox(height: 30),
      Stack(
        children: [
          Center(
              child: Container(
                  width: 350,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22.0),
                    color: Color.fromARGB(255, 225, 242, 255),
                  ))),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 50, top: 25),
                child: Text(
                  'Track your monthly progress\nwith photo',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Container(
                alignment: Alignment(0.0, 0.0),
                width: 160,
                height: 45,
                margin: EdgeInsets.only(top: 26),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Color.fromARGB(121, 92, 168, 255)),
                child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                     
                    ),
                    child: Text(
                      'Learn more',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 250, top: 55),
                child: Image.asset(
                  'image/gym.png',
                  width: 110,
                ),
              )
            ],
          ),
        ],
      ),
      SizedBox(
        height: 40,
      ),
      Stack(
        children: [
          Center(
              child: Container(
            width: 350,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(28.0),
              color: Color.fromARGB(255, 225, 242, 255),
            ),
            child: Row(children: [
              Container(
                margin: EdgeInsets.only(left: 15),
                child: Text(
                  'Compare my photo',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              Center(
                child: Container(
                  alignment: Alignment(0.0, 0.0),
                  width: 145,
                  height: 65,
                  margin: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      backgroundColor: Color.fromARGB(121, 92, 168, 255),
                    ),
                    child: Text(
                      'Compare',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              )
            ]),
          )),
        ],
      ),
      SizedBox(
        height: 15,
      ),
      Row(
        children: [
          Container(
            padding: EdgeInsets.only(left: 25),
            child: Text(
              'Gallery',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 235),
            alignment: Alignment(-0.12, 0.0),
            child: Text(
              'see more',
              style: TextStyle(
                  color: const Color.fromARGB(255, 67, 62, 62),
                  fontWeight: FontWeight.w300,
                  fontSize: 15),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 15,
      ),
      Container(
        margin: EdgeInsets.only(right: 318),
        child: Text('2 June',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.w300,
            )),
      ),
      SizedBox(
        height: 10,
      ),
      Container(
        margin: EdgeInsets.only(left: 20),
        height: 95,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              width: 70,
              margin: EdgeInsets.all(6),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('image/dola.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: 70,
              margin: EdgeInsets.all(6),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('image/dola.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: 70,
              margin: EdgeInsets.all(6),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('image/dola.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: 70,
              margin: EdgeInsets.all(6),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('image/dola.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: 70,
              margin: EdgeInsets.all(6),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('image/dola.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: 70,
              margin: EdgeInsets.all(6),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('image/dola.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: 70,
              margin: EdgeInsets.all(6),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('image/dola.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: 70,
              margin: EdgeInsets.all(6),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('image/dola.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Container(
        margin: EdgeInsets.only(right: 318),
        child: Text('2 June',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.w300,
            )),
      ),
      SizedBox(
        height: 10,
      ),
      Container(
        margin: EdgeInsets.only(left: 20),
        height: 100,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              width: 110,
              margin: EdgeInsets.all(6),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('image/5y2.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: 110,
              margin: EdgeInsets.all(6),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('image/5y3.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: 110,
              margin: EdgeInsets.all(6),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('image/5y.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: 80,
              margin: EdgeInsets.all(6),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('image/5y1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: 110,
              margin: EdgeInsets.all(6),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('image/5y2.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: 110,
              margin: EdgeInsets.all(6),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('image/5y3.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: 110,
              margin: EdgeInsets.all(6),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('image/5y.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: 110,
              margin: EdgeInsets.all(6),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('image/5y1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      )
    ]));
  }
}
