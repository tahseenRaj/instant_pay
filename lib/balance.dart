import 'package:flutter/material.dart';

balance() {
  return Container(
    height: 500,
    width: double.infinity,
    margin: EdgeInsets.all(10),
    decoration: BoxDecoration(
        color: Color.fromARGB(255, 47, 51, 61),
        borderRadius: BorderRadius.circular(25)),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.topCenter,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_circle_left_outlined),
            color: Colors.white,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Hello',
            style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.topRight,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.bar_chart_rounded),
            color: Colors.white,
          ),
        ),
      )
    ]),
  );
}
