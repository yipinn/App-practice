import 'package:flutter/material.dart';



class pub extends StatefulWidget {
  @override
  _pubState createState() => _pubState();
}

class _pubState extends State<pub>
    with TickerProviderStateMixin {
  late PageController _pageController;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  void _onPageChange(int index) {
    _animationController.forward(from: 0.0);
  }

  void _onButtonPressed() {
    int currentPage = _pageController.page!.round();
    int nextPage = (currentPage + 1) % 4;
    _pageController.animateToPage(
      nextPage,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );

    // 每跳转一次增加0.25
    _animationController.duration = Duration(milliseconds: 500);
    _animationController.forward(from: 0.0);
    _animationController.duration = Duration(milliseconds: 500);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageView with GestureDetector'),
      ),
      body: PageView.builder(
        controller: _pageController,
        itemCount: 4,
        onPageChanged: _onPageChange,
        itemBuilder: (context, index) {
          return AnimatedBuilder(
            animation: _animationController,
            builder: (context, child) {
              double scale = 1.0 - (_animationController.value * 0.25);
              return Center(
                child: Transform.scale(
                  scale: scale,
                  child: Container(
                    color: Colors.blue,
                    child: Center(
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: GestureDetector(
        onTap: _onButtonPressed,
        child: Container(
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue,
          ),
          child: Icon(Icons.arrow_forward, color: Colors.white),
        ),
      ), 
    );
  }
}