import 'package:flutter/material.dart';
import 'package:instant_pay/login.dart';

class Starter extends StatelessWidget {
  const Starter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181A20),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Expanded(
            child: Center(
                child: Image(
              image: AssetImage('assets/images/duck.gif'),
              fit: BoxFit.scaleDown,
            )),
          ),
          Container(
            decoration: const BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.purple,
                offset: Offset(3.0, 4.0),
                blurRadius: 5.0,
                spreadRadius: 1.0,
                blurStyle: BlurStyle.normal,
              )
            ]),
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFF4D5DFA),
                elevation: 6,
                splashFactory: NoSplash.splashFactory,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 13),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const Login()));
              },
              child: const Text(
                'INSTANT PAY',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 1),
              ),
            ),
          ),
          const SizedBox(
            child: Text(
              'Your Perfect Payment Partner',
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
