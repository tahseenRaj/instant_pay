import 'package:flutter/material.dart';
import 'package:instant_pay/buttons.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181A20),
      body: SafeArea(
        child: SingleChildScrollView(
          child: DefaultTextStyle(
            style: const TextStyle(color: Colors.white),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(
                      left: 10, right: 10, top: 10, bottom: 5),
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 47, 51, 61),
                      borderRadius: BorderRadius.circular(25)),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        height: 70,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // mainAxisSize: MainAxisSize.max,
                          children: [
                            const CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/user.jpg'),
                              radius: 40,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: const [
                                    Text(
                                      'Elsa',
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 40,
                                    ),
                                    Icon(
                                      Icons.stars_rounded,
                                      color: Colors.orange,
                                    )
                                  ],
                                ),
                                const Text(
                                  'Level 4 Ace Member',
                                  style:
                                      TextStyle(fontSize: 11, wordSpacing: 2),
                                ),
                                const SizedBox(
                                  width: 150,
                                  child: LinearProgressIndicator(
                                    minHeight: 6,
                                    value: 0.8,
                                    backgroundColor: Colors.white,
                                    color: Color.fromRGBO(137, 145, 255, 1),
                                  ),
                                ),
                              ],
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.all(3),
                                  minimumSize: Size.zero,
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Icon(
                                  Icons.highlight_remove_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 15),
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: const [
                                Text(
                                  '1,208',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color:
                                          Color.fromARGB(255, 137, 145, 255)),
                                ),
                                Text(
                                  'Transactions',
                                  style: TextStyle(fontSize: 11),
                                )
                              ],
                            ),
                            const VerticalDivider(
                              color: Colors.white,
                            ),
                            Column(
                              children: const [
                                Text(
                                  '726',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color:
                                          Color.fromARGB(255, 137, 145, 255)),
                                ),
                                Text(
                                  'Points',
                                  style: TextStyle(fontSize: 11),
                                )
                              ],
                            ),
                            const VerticalDivider(
                              color: Colors.white,
                            ),
                            Column(
                              children: const [
                                Text(
                                  '8',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color:
                                          Color.fromARGB(255, 137, 145, 255)),
                                ),
                                Text(
                                  'Rank',
                                  style: TextStyle(fontSize: 11),
                                )
                              ],
                            ),
                            const VerticalDivider(),
                            profileBtnSmall(
                                'Explore', Icons.arrow_circle_right_outlined)
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          profileBtnSmall(
                              'Edit Profile', Icons.manage_accounts_outlined),
                          profileBtnSmall('Settings', Icons.settings_outlined),
                          profileBtnSmall('Share', Icons.share)
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 47, 51, 61),
                      borderRadius: BorderRadius.circular(25)),
                  child: Column(
                    children: [
                      profileBtnLong(
                          'All Transactions', Icons.receipt_long, context),
                      profileBtnLong(
                          'Pending Transactions', Icons.error_outline, context),
                      profileBtnLong(
                          'Refund Status', Icons.access_time, context),
                      profileBtnLong(
                          'Raise an issue', Icons.priority_high, context),
                      profileBtnLong(
                          'Help and Support', Icons.favorite_border, context)
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 47, 51, 61),
                      borderRadius: BorderRadius.circular(25)),
                  child: Column(
                    children: [
                      profileBtnLong('About Us', Icons.error_outline, context),
                      profileBtnLong(
                          'Terms and Conditions', Icons.access_time, context),
                      profileBtnLong(
                          'Feedback', Icons.feedback_outlined, context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
