
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'getx_controller.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp();

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Logic logic=Get.put(Logic());  //  New instance of controller class
  @override
  void initState() {
    Get.find<Logic>().increment();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {


    return GetMaterialApp(

      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(centerTitle: true,
          title: const Text("Simple digital clock"),

        ),
        body:
        GetBuilder<Logic>(init:Logic() ,builder: (controller){
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('😊',style: TextStyle(fontSize: 40),),
              const SizedBox(height: 30,),
              Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  controller.hours<=9? Text("0${controller.hours} :",style: const TextStyle(fontSize: 60),):Text("${controller.hours} :",style: const TextStyle(fontSize: 60)),
                  controller.minutes<=9? Text(" 0${controller.minutes} :",style: const TextStyle(fontSize: 60),):Text(" ${controller.minutes} :",style: const TextStyle(fontSize: 60)),
                  controller.counter<=9? Text(" 0${controller.counter}",style: const TextStyle(fontSize: 60),):Text(" ${controller.counter}",style: const TextStyle(fontSize: 60)),
                ],
              ),
            ],
          );
        },),



      ),
    );

  }

}