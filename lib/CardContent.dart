import 'package:flutter/material.dart';

bool isClickPhone = true;
bool isClickPersons = false;
bool isClickFavotires = false;

class CardContent extends StatelessWidget {
  const CardContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double widht = MediaQuery.of(context).size.width;
    final double heigth = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Phone", style: TextStyle(fontSize: 18)),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.table_rows_rounded),
              )
            ],
          ),
          Expanded(
            flex: 3,
            child: Container(
                color: Colors.orangeAccent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text("İsmi Düzenlemek için tıklayınız..",
                          style: TextStyle(fontSize: 20,color: Colors.black)),
                    ),
                    TextButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.edit_outlined )
                        ,label: Text(' '))

                  ],
                )),
          ),
          Expanded(
            flex: 5,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white70,
                  border: Border(
                      top: BorderSide(
                    color: Colors.black87,
                    width: 3,
                  ))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  buildGestureDetector(
                      widht: widht,
                      heigth: heigth,
                      icon: Icons.phone,
                      text: "Telefon",
                      whichOneClick: isClickPhone),
                  buildGestureDetector(
                      widht: widht,
                      heigth: heigth,
                      icon: Icons.person_pin,
                      text: "Kişiler",
                      whichOneClick: isClickPersons),
                  buildGestureDetector(
                      widht: widht,
                      heigth: heigth,
                      icon: Icons.star_border_outlined,
                      text: "Favorilere Ekle",
                      whichOneClick: isClickFavotires),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}

GestureDetector buildGestureDetector({
  required double widht,
  required double heigth,
  required IconData icon,
  required String text,
  required bool whichOneClick,
}) {
  return GestureDetector(
    onTap: () {
      setState(() {});
    },
    child: Container(
      width: widht / 3.075,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
          ),
          SizedBox(
            height: heigth * 0.004,
          ),
          Text(
            text,
            style: TextStyle(color: Colors.orangeAccent, fontSize: 18),
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    ),
  );
}

void setState(Null Function() param0) {}
