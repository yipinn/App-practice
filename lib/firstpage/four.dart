import 'package:flutter/material.dart';
import 'package:qooname/firstpage/five.dart';

class four extends StatefulWidget {
  const four({super.key, required String text});

  @override
  State<four> createState() => _fourState();
}

class _fourState extends State<four> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;
  final ValueNotifier<double> totalValNotifier = ValueNotifier(0);
  double start = 0.0;
  double end = 1.0;

  onTapLoading() {
    if (end == 1) {
      start = 1;
      end = 0;
      setState(() {});
      return;
    }
    start = end;
    end += 0.25;
    setState(() {});
  }

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
      body: Column(children: <Widget>[
        Center(
          child: Container(
            child: Image.asset(
              'image/ra.png',
              fit: BoxFit.cover,
            ),
            width: 410,
            height: 520,
          ),
        ),
        SizedBox(height: 15),
        Container(
            child: RichText(
                text: TextSpan(
                    text: 'Improve Sleep Quality',
                    style: TextStyle(
                      fontSize: 25,
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ))),
            width: 350,
            height: 60,
            alignment: Alignment.centerLeft),
        SizedBox(
          height: 10,
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
                                "Improve the quality of your sleep with us,\ngood quality sleep can bring a good mood\nin the moening. ",
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 18,
                            ))),
                    width: 480,
                    height: 100,
                    alignment: Alignment(-0.1, -2.0),
                  ));
            }),
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
                                    }));
                      },
                      child: Container(
                        height: 55,
                        width: 52,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 163, 187, 237),
                            shape: BoxShape.circle),
                        child: Icon(
                          Icons.chevron_right,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                )))
      ]),
    );
  }
}
