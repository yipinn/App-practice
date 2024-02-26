
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:qooname/firstpage/button1.dart';
import 'package:qooname/firstpage/button2.dart';
import 'package:qooname/firstpage/button3.dart';



class ten extends StatefulWidget {
  const ten({super.key});

  @override
  State<ten> createState() => _tenState();
}

class _tenState extends State<ten> {

int selectedpage =0;
final ten=[button1(text: '',),button2(),button3()];

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  body: ten[selectedpage],
     bottomNavigationBar: ConvexAppBar(items: 
    [TabItem(icon: Icons.home,),
    TabItem(icon: Icons.camera_alt_outlined,),
    TabItem(icon: Icons.person_outline_sharp,),
    ],
    initialActiveIndex: selectedpage,
    onTap: (int index) {
      setState(() {
        selectedpage= index;
      });
    }),
      );
  }
}
  
