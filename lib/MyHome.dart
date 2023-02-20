import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/widget/mycard.dart';

List<String> personList = [
  "Ayşe",
  "Merve",
  "Ali",
  "Sıla",
  "Neslihan",
  "Hayri",
  "Ahmet",
  "Kübra",
  "Derya",
  "Azra",


];
List<String> timeList = [
  "12:49",
  "10:12",
  "09:09",
  "Dün",
  "Dün",
  "Dün",
  "18.02.2023",
  "18.02.2023",
  "18.02.2023",
  "17.02.2023",


];
List<String> numberList = [
  "05**********",
  "05**********",
  "05**********",
  "05**********",
  "05**********",
  "05**********",
  "05**********",
  "05**********",
  "05**********",
  "05**********",


];

class MyHome extends StatelessWidget {
  final String person;
  final String time1;
  final String number;



  const MyHome(
      {Key? key,
      required this.person,
      required this.time1,
      required this.number})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        SafeArea(child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Phone",style:TextStyle(fontSize: 25,)),
              SizedBox(width: 25,height: 25,)

            ],),
            Expanded(
              child: ListView.builder(
                  itemCount: personList.length,
                  itemBuilder: (context, index) =>
                    mycard(
                      person: personList[index],
                      time1: timeList[index],
                      number: numberList[index],
                    ),
                  ),
            ),





          ],),
              /*Expanded(
               child: ListView.builder(
                  itemCount: personList.length,
                  itemBuilder: (context, index) {
                    mycard(
                      person: personList[index],
                      time1: timeList[index],
                      number: numberList[index],
                    );
                  }),
             ),*/
           ),
        );
  }
}
