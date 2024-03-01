import 'package:flutter/material.dart';

class NavigationHelper {

static void pushWithAnimation(BuildContext context, Widget page) {

Navigator.of(context).push(_createRoute(page));

}

static PageRouteBuilder _createRoute(Widget page) {

return PageRouteBuilder(

transitionDuration: Duration(milliseconds: 500),

pageBuilder: (_, animation, __) => page,

transitionsBuilder: (_, animation, __, child) {

return SlideTransition(

position: Tween<Offset>(

begin: Offset(1.0, 0.0),

end: Offset.zero,

).animate(animation),

child: child,

);

},

);

}

}