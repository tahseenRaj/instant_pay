import 'package:flutter/material.dart';

import 'receive.dart';

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
            color: const Color.fromARGB(123, 0, 0, 0),
            child: IconTheme(
              data: const IconThemeData(color: Colors.white70),
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
            onPressed: () {},
            child: Icon(
              icon,
              color: const Color(0xffFA4D96),
              size: 30,
            ),
          )),
      const SizedBox(
        height: 5,
      ),
      Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 13),
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
          decoration: const BoxDecoration(),
          child: CircleAvatar(
            backgroundImage: NetworkImage(link),
          )),
      const SizedBox(
        height: 5,
      ),
      Text(
        name,
        style: const TextStyle(color: Colors.white, fontSize: 13),
      ),
    ],
  ));
}

accounts(String bank, int accNum, String balance, Color color) {
  return Container(
    padding: const EdgeInsets.all(15),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      children: [
        Text(
          bank,
          style: const TextStyle(
              fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 5),
        Text(
          '$accNum',
          style: const TextStyle(fontSize: 12, color: Colors.white),
        ),
        const SizedBox(height: 10),
        Text(
          '\$$balance',
          style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 1),
        ),
      ],
    ),
  );
}

scratchCard() {
  return Expanded(
    child: Container(
        margin: const EdgeInsets.all(5),
        height: 100,
        width: double.maxFinite,
        decoration: const BoxDecoration(
          color: Color(0xFF3F3397),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: TextButton(
            style: TextButton.styleFrom(
              splashFactory: NoSplash.splashFactory,
            ),
            onPressed: () {},
            child: const Image(
              image: NetworkImage('https://i.gifer.com/XOsX.gif'),
              width: 50,
            ))),
  );
}

longBtn(String text) {
  return SizedBox(
    width: double.infinity,
    height: 50,
    child: TextButton(
        style: TextButton.styleFrom(
          primary: Colors.white,
          backgroundColor: const Color.fromARGB(255, 79, 84, 97),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
        onPressed: () {},
        child: Text(text)),
  );
}

rewards(String reward, String description, String image) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.all(10),
    height: 120,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: Colors.deepPurple,
    ),
    child: Row(
      children: [
        SizedBox(
          width: 100,
          child: Center(
              child: Image(image: AssetImage('assets/images/$image.png'))),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              reward,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              description,
              style: const TextStyle(color: Colors.white, fontSize: 11),
            ),
            TextButton(
                style: TextButton.styleFrom(
                  splashFactory: NoSplash.splashFactory,
                  backgroundColor: Colors.purple,
                ),
                onPressed: () {},
                child: const Text(
                  'Collect Now',
                  style: TextStyle(color: Colors.pinkAccent),
                )),
          ],
        )
      ],
    ),
  );
}

offers(
    String? offer, String code, String description, String image, Color color) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 10),
    width: double.infinity,
    padding: const EdgeInsets.all(10),
    height: 120,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: color,
    ),
    child: Row(
      children: [
        Container(
          width: 100,
          child: Center(
              child: Image(image: AssetImage('assets/images/$image.png'))),
        ),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                offer!,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5),
              ),
              // SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2),
                child: Text(
                  code,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              // SizedBox(height: 5),
              Flexible(
                child: Text(
                  description,
                  style: const TextStyle(color: Colors.white, fontSize: 11),
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}

profileBtnLong(String title, IconData icon, context) {
  return ListTile(
    leading: Icon(
      icon,
      color: Colors.white,
    ),
    title: Text(
      title,
      textScaleFactor: 1.1,
      style: const TextStyle(color: Colors.white),
    ),
    trailing: const Icon(Icons.arrow_forward_ios_rounded, color: Colors.white),
    selected: true,
    onTap: () {
      const snackBar = SnackBar(
        backgroundColor: Colors.white,
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.only(bottom: 20, right: 20, left: 20),
        content: Text(
          'Button Clicked',
          style: TextStyle(color: Colors.black),
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    },
  );
}

profileBtnSmall(String text, IconData icon) {
  return TextButton.icon(
    style: TextButton.styleFrom(
      splashFactory: NoSplash.splashFactory,
      primary: Colors.white,
      padding: EdgeInsets.all(6),
      backgroundColor: Color.fromARGB(255, 95, 101, 114),
    ),
    onPressed: () {},
    icon: Text(
      text,
    ),
    label: Icon(icon),
  );
}

notificationBtnLong(String title, String message, String dateTime, context) {
  return ListTile(
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          textScaleFactor: 1.1,
          style: const TextStyle(color: Colors.white),
        ),
        const Divider(height: 8,),
        Text(
          message,
          style: const TextStyle(
              fontSize: 11, color: Color.fromARGB(255, 200, 200, 200)),
        ),
        const Divider(height: 5,),
        Text(
          dateTime,
          style: const TextStyle(
              fontSize: 11, color: Color.fromARGB(255, 200, 200, 200)),
        ),
        const Divider(),
      ],
    ),
    trailing: IconButton(
        onPressed: () {},
        icon: const CircleAvatar(
            backgroundColor: Color(0x63B0BEC5),
            child: Icon(
              Icons.notifications_outlined,
              color: Colors.white,
              size: 30,
            ))),
    selected: true,
    onTap: () {
      const snackBar = SnackBar(
        backgroundColor: Colors.white,
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.only(bottom: 20, right: 20, left: 20),
        content: Text(
          'Button Clicked',
          style: TextStyle(color: Colors.black),
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    },
  );
}
