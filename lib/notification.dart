import 'package:flutter/material.dart';

import 'buttons.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181A20),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 47, 51, 61),
              borderRadius: BorderRadius.circular(25)),
            child: Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Notifications',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.highlight_remove_rounded),
                      color: Colors.white,
                    ),
                  )
                ]),
                Divider(color: Colors.grey,),
                Column(
                  children: [
                    notificationBtnLong('Recharge Completed', 'Your last recharge on 9847229989 of \$20 has been succesfully completed.', 'June 13 - 08:24 PM', context),
                    notificationBtnLong('Money Recived', 'Your account ***21445 has been recieved an amount of \$1000 using upi transaction.', 'May 28 - 12:45 Pm', context),
                    notificationBtnLong('Offer Unlocked', 'You have an unlockd offer avilable go to offer section or tap to view the offer.', 'May 20 - 2:45 Pm', context),
                  ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Recent Notifications',
                        style: TextStyle(color: Colors.white, fontSize: 18, letterSpacing: 1),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_drop_down_circle_outlined,),
                      color: Colors.white,
                    ),
                  )
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
