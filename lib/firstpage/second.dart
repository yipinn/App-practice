import 'package:flutter/material.dart';
import 'package:qooname/firstpage/third.dart';
import 'package:qooname/route/route.dart';


class second extends StatefulWidget {
  const second({super.key, required String text});

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> Offset_animation;
  final ValueNotifier<double> totalValNotifier = ValueNotifier(0);
  double start = 0.0;
  double end = 0.5;

  onTapLoading() {
    if (end == 1) {
      start = 1;
      end = 0;
     
    }else{
      start = end;
      end+=0.25;
    }
   
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 800),
    );

    Offset_animation = Tween<Offset>(
      //文字滑動的動畫
      begin: Offset(1.0, 0.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text(''),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Column(children:[
          Center(
            child: Container(
              child: Image.asset(
                'image/run.png',
                fit: BoxFit.cover,
              ),
              width: 420,
              height: 520,
            ),
          ),
          SizedBox(height: 15),
          Container(
            child: RichText(
                text: TextSpan(
                    text: 'Get Active',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ))),
            width: 350,
            height: 60,
            alignment: Alignment.centerLeft,
          ),
          SizedBox(
            height: 10,
          ),
          AnimatedBuilder(
            animation: Offset_animation,
            builder: (context, child) {
              return FractionalTranslation(
                translation: Offset_animation.value,
                child: Container(
                  child: RichText(
                      text: TextSpan(
                          text:
                              "Let's keep burning,to achive yours goals,it\nhurts only temporarily,if you give up now\nyou will be in pain forver.",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 18,
                          ))),
                  width: 375,
                  height: 100,
                  alignment: Alignment(-0.3, -2.0),
                ),
              );
            },
          ),
          SizedBox(height: 80),
          TweenAnimationBuilder<double>(
              tween: Tween<double>(begin: start, end: end),
              duration: const Duration(milliseconds: 500),
              builder: (context, value, _) => Align(
                  alignment: Alignment(0.9, 0.5),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 252, 252, 252),
                            shape: BoxShape.circle),
                        child: CircularProgressIndicator(
                          color: Color.fromARGB(255, 216, 216, 255),
                          value: value,
                        ),
                      ),
                       GestureDetector(
  onTap: () {
    
    NavigationHelper.pushWithAnimation(context,third(text: '二頁'));
  },
child: Container(  height: 55,
                          width: 52,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 163, 187, 237),
                              shape: BoxShape.circle),
                          child: Icon(
                            Icons.chevron_right,
                            color: Colors.white,
                          ),),
),],
                  )))
        ]),);
  }
}
