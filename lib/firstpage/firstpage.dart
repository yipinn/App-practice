import 'package:flutter/material.dart';
import 'package:qooname/firstpage/second.dart';
import 'package:qooname/route/route.dart';

class firstpagestate extends StatefulWidget {
  const firstpagestate({Key? key, required String text}) : super(key: key);

  @override
  State<firstpagestate> createState() => _FirstPageStateState();
}

class _FirstPageStateState extends State<firstpagestate>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;
  late OverlayEntry overlayEntry;
  final ValueNotifier<double> totalValNotifier = ValueNotifier(0);
  double start = 0.0;
  double end = 0.25;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 800),
    );

    _animation = Tween<Offset>(
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
      body: Column(
        children: [
          Center(
            child: Container(
              child: Image.asset(
                'image/good.png',
                fit: BoxFit.cover,
              ),
              width: 500,
              height: 500,
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Container(
            child: RichText(
              text: TextSpan(
                text: 'Track your goal',
                style: TextStyle(
                    fontSize: 28,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            width: 360,
            height: 45,
            alignment: Alignment.centerLeft,
          ),
          AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              return FractionalTranslation(
                translation: _animation.value,
                child: Container(
                  child: RichText(
                      text: TextSpan(
                          text:
                              "Don't worry it you have trouble determining \nyour goals, We can help you determine your \ngoal and track your goals",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(172, 83, 82, 82)))),
                  width: 350,
                  height: 60,
                  alignment: Alignment.centerLeft,
                ),
              );
            },
          ),
          SizedBox(height: 145),
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
                        child: Icon(
                          Icons.chevron_right,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          NavigationHelper.pushWithAnimation(
                              context, second(text: '二頁'));
                        },
                        child: Container(
                          height: 55,
                          width: 52,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 163, 187, 237),
                              shape: BoxShape.circle),
                          child: Icon(
                            Icons.chevron_right,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ))),
        ],
      ),
    );
  }
}
