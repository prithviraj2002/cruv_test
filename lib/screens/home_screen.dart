import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task1/constants/size.dart';
import 'package:task1/provider/seat_provider.dart';

import '../constants/components.dart';
import '../constants/strings.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<SeatProvider>(
      builder: (buildContext, seatProvider, child) => Scaffold(
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: Dimens.dimen10, horizontal: Dimens.dimen10),
          margin: const EdgeInsets.only(top: Dimens.dimen30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                Strings.titleText,
                style: TextStyle(
                    color: Colors.lightBlue, fontSize: Dimens.dimen30, fontWeight: FontWeight.bold
                ),),
              const SizedBox(height: Dimens.dimen10,),
              Container(
                padding: const EdgeInsets.only(left: Dimens.dimen15),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.lightBlue),
                  borderRadius: BorderRadius.circular(Dimens.dimen10)
                ),
                child: TextField(
                  controller: _controller,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                      hintText: Strings.hintText,
                      hintStyle: const TextStyle(color: Colors.lightBlue),
                      suffix: Container(
                        width: Dimens.dimen60,
                        height: Dimens.dimen40,
                        color: _controller.text.isEmpty ? Colors.grey : Colors.lightBlue,
                        child: GestureDetector(
                          onTap: () {
                            if(_controller.text.isNotEmpty){
                              seatProvider.seatStatus(int.parse(_controller.text), context);
                            }
                            else if(_controller.text.isEmpty){
                              Components.CustomSnackBar(Strings.noEmptySeatText, context);
                            }
                          },
                          child: const Center(child: Text(Strings.findText, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
                        ),
                      )
                  ),
                ),
              ),
              const SizedBox(height: Dimens.dimen20,),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: Dimens.dimen10,
                      crossAxisSpacing: Dimens.dimen10
                  ),
                  itemBuilder: (ctx, index) => Container(
                    decoration: BoxDecoration(
                      color: seatProvider.seat == index ? Colors.white : Colors.lightBlue,
                      border: Border.all(color: seatProvider.seat == index ? Colors.blue : Colors.white)
                    ),
                    child: Center(
                      child: Text(
                        seatProvider.seats[index].toString(),
                        style: TextStyle(
                          fontSize: Dimens.dimen25,
                          color: seatProvider.seat == index? Colors.blue : Colors.white
                        ),
                      ),
                    )
                  ),
                  itemCount: seatProvider.seats.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
