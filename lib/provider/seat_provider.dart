import 'package:flutter/material.dart';
import 'package:task1/constants/components.dart';
import 'package:task1/constants/strings.dart';

class SeatProvider with ChangeNotifier{

  List<int> seats = List.generate(33, (index) => index);
  int seat = -1;

  Widget seatStatus(int s, BuildContext context){
    if(seats.contains(s)){
      seat = s;
      notifyListeners();
      Components.CustomSnackBar(Strings.seatFoundText, context);
    }
    else if(!seats.contains(s)){
      seat = -1;
      notifyListeners();
      Components.CustomSnackBar(Strings.seatNotFoundText, context);
    }
    else{
      Components.CustomSnackBar(Strings.seatNotAvailableText, context);
    }
    return Container();
  }

}