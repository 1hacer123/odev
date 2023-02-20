import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../CardContent.dart';

class mycard extends StatelessWidget {
  final String person;
  final String time1;
  final String number;

  const mycard({
    Key? key,
    required this.person,
    required this.time1,
    required this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white54,
        child: ListTile(
            title: Text(person,
                style: TextStyle(
                  fontSize: 25,
                )),
            leading: Icon(Icons.phone),
            subtitle: Text(number),
            trailing: Container(
                width: 150,
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Text(time1, style: TextStyle(fontSize: 15)),
                  SizedBox(width: 12),
                  GestureDetector(
                      onTap: () {
                        try {
                          showDialog(
                              context: context,
                              builder: (builder) => AlertDialog(
                                    title: Text("Ayrıntılar"),
                                    content: Text("Arama Kayıtları"),
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    actions: [
                                      ElevatedButton(
                                          style: ButtonStyle(
                                              foregroundColor:
                                                  MaterialStateProperty.all(
                                                      Colors.black)),
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (builder) =>
                                                        CardContent()));
                                          },
                                          child: Text("DÜZENLE"))
                                    ],
                                  ));
                        } catch (e, s) {
                          print(s);
                        }
                      },
                      child: Icon(Icons.info_outline_rounded, size: 30))
                ]))));
  }
}
