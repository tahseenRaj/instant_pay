import 'package:flutter/material.dart';

billingBtn(Color color, String text, Icon icon) {
  return Expanded(
    child: Container(
      // padding: const EdgeInsets.only(top: 3, bottom: 3, left: 5),
      height: 50,
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(12.0)),
      ),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 40,
            color: Color.fromARGB(123, 0, 0, 0),
            child: IconTheme(
              data: new IconThemeData(color: Colors.white70),
              child: icon,
            ),
          ),
          TextButton(
            style: ElevatedButton.styleFrom()
                .copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
            onPressed: () {},
            child: Text(
              text,
              style: const TextStyle(color: Colors.white, fontSize: 13),
            ),
          ),
        ],
      ),
    ),
  );
}

servicesBtn(IconData icon, String text) {
  return Expanded(
      child: Column(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      Container(
          height: 60,
          width: double.maxFinite,
          decoration: const BoxDecoration(
            color: Color(0xFF3F3397),
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          child: TextButton(
            style: TextButton.styleFrom(
              splashFactory: NoSplash.splashFactory,
            ),
            onPressed: () {
              print('Service button pressed!');
            },
            child: Icon(
              icon,
              color: Color(0xffFA4D96),
              size: 30,
            ),
          )),
      SizedBox(
        height: 5,
      ),
      Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: 13),
      ),
    ],
  ));
}

peoples(String name, String link) {
  return Expanded(
      child: Column(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      Container(
          height: 60,
          width: double.maxFinite,
          decoration: BoxDecoration(),
          child: CircleAvatar(
            backgroundImage: NetworkImage(link),
          )),
      SizedBox(
        height: 5,
      ),
      Text(
        name,
        style: TextStyle(color: Colors.white, fontSize: 13),
      ),
    ],
  ));
}
