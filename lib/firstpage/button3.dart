import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CounterController extends GetxController {  //計數器
  RxInt count = 0.obs;

  void increment() {
    count++;
  }

  void decrement() {
    if (count > 0) {
      //計數器不能為負數
      count--;
    }
  }
}

class SumController extends GetxController {   //SUM
  var numA = 0.obs;
  var numB = 0.obs;
  var sum = 0.obs;

  void calculateSum() {
    sum.value = numA.value + numB.value;
  }
}

class button3 extends StatelessWidget {
  const button3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CounterController controller = Get.put(CounterController());
    final SumController controller1 = Get.put(SumController());

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 75),
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
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Obx(
            () => Text(
              '計數器: ${controller.count}',
              style: TextStyle(fontSize: 20),
            ),
          ),
          ElevatedButton(
            onPressed: controller.increment,
            child: Text('增加'),
          ),
          ElevatedButton(
            onPressed: controller.decrement,
            child: Text('減少'),


          ),Row(children: [Container( width: 100,padding: EdgeInsets.only(left: 20),child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'A'),
              onChanged: (value) {
                controller1.numA.value = int.tryParse(value) ?? 0;
              },
            ),
            ),Container( width: 100,padding: EdgeInsets.only(left: 20),child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'B'),
              onChanged: (value) {
                controller1.numB.value = int.tryParse(value) ?? 0;
              },
            ),
            ),Container(padding: EdgeInsets.only(left: 20),child: ElevatedButton(
              onPressed: () {
                controller1.calculateSum();
              },
              child: Text('總和'),
            ),
           ),Container(padding: EdgeInsets.only(left: 20),child:  Obx(() => Text(
                  ' ${controller1.sum}',
                  style: TextStyle(fontSize: 24),
                )),)],)
        ],
      ),
    );
  }
}
