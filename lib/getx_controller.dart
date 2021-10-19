import 'dart:async';

import 'package:get/get.dart';

class Logic extends GetxController {
// variables responsible to display time in the ui screen.
  int counter = DateTime
      .now()
      .minute;
  int minutes = DateTime
      .now()
      .minute;
  int hours = DateTime
      .now()
      .hour;
// Update method.
  void increment() {
    Timer.periodic(const Duration(seconds: 1), (t) =>
    {
      counter++,
      if(counter == 60)
        {
          counter = 1,
          minutes++,
          if(minutes == 60){
            minutes = 1,
            hours++,
            if(hours == 0 && hours != 12){
              hours = 12,
            }
            else
              if(hours == 12 && hours != 0){
                hours = 12,
              }
              else
                if(hours < 12 && hours != 0){
                  hours = hours,

                }
                else
                  if(hours > 12 && hours != 0){
                    hours = hours - 12,

                  }
          }
        },
      update()
    });
  }
}