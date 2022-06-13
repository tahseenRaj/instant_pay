import 'package:flutter/material.dart';
import 'package:instant_pay/buttons.dart';

import 'dashboard.dart';

class Balance extends StatefulWidget {
  const Balance({Key? key}) : super(key: key);

  @override
  State<Balance> createState() => _BalanceState();
}

class _BalanceState extends State<Balance> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
              Align(
                alignment: Alignment.topCenter,
                child: IconButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Dashboard()));
                  },
                  icon: const Icon(Icons.arrow_circle_left_outlined),
                  color: Colors.white,
                ),
              ),
              const Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'Portfolio Value',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  onPressed: () {},
                  icon: const Icon(Icons.bar_chart_rounded),
                  color: Colors.white,
                ),
              )
            ]),
            const Center(
              child: Text(
                '\$55,371',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFADADAD),
                    letterSpacing: 2),
              ),
            ),
            const SizedBox(height: 5),
            const Center(
              child: Text(
                'In 3 Accounts',
                style: TextStyle(fontSize: 18, color: Color(0xFFADADAD)),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(8.0),
              child: GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.all(8),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                childAspectRatio: (1 / 0.8),
                children: [
                  accounts(
                      'Federal Bank', 1142524899652, '16,456.05', Colors.purple),
                  accounts(
                      'States Bank', 1142524899652, '2045.05', Colors.deepPurple),
                  accounts('Best Bank', 1142521547852, '35873.5', Colors.green),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            longBtn('Add / Manage Accounts')
          ],
        ),
      ),
    );
  }
}
