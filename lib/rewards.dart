import 'package:flutter/material.dart';
import 'package:instant_pay/buttons.dart';

class Rewards extends StatelessWidget {
  const Rewards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.all(10),
      child: ListView(
        children: [
          Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 47, 51, 61),
                  borderRadius: BorderRadius.circular(25)),
              child: Center(
                child: Column(
                  children: [
                    const Text('Cashback earned',
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                    const SizedBox(height: 10),
                    const Text(
                      '\$507 ',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFADADAD),
                          letterSpacing: 2),
                    ),
                    const Text(
                      '\$88 This month',
                      style: TextStyle(fontSize: 18, color: Color(0xFFADADAD)),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: TextButton(
                          style: TextButton.styleFrom(
                            primary: Colors.white,
                            backgroundColor:
                                const Color.fromARGB(255, 79, 84, 97),
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                          ),
                          onPressed: () {},
                          child: const Text('View your cashback history')),
                    ),
                  ],
                ),
              )),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Scrachcards won",
            textAlign: TextAlign.left,
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              scratchCard(),
              scratchCard(),
              scratchCard(),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Collect Rewards",
            textAlign: TextAlign.left,
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18),
          ),
          const SizedBox(
            height: 15,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              rewards('Flat 50% off On food Delivery',
                  'On orders above 99 on Swaggy, Somato', 'reward1'),
              const SizedBox(
                height: 10,
              ),
              rewards('20% Cashback On Amason',
                  'Up to Rs 150 Minimum Order \$100', 'reward2'),
              const SizedBox(
                height: 20,
              ),
            ],
          )
        ],
      ),
    );
  }
}
