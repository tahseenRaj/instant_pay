import 'package:flutter/material.dart';
import 'package:instant_pay/buttons.dart';

class Offers extends StatelessWidget {
  const Offers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: ListView(
        children: [
          offers('Mobile Recharge Offer', 'Use Code FIRST20', 'Get 20 % Instant cashback upto Rs 50 on your firs mobile recharge. T&C apply', 'offer1', Colors.deepPurple),
          offers('DTH Recharge Offer', 'Use Code FIRSDTHT20', 'Get 20 % Instant cashback upto Rs 50 on your first DTH recharge. T&C apply', 'offer2', Colors.blueGrey),
          offers('Flipcart Shopping Offer', '', 'Shop on Flipcart using our payment system to get upto 50% cashback . T&C appply', 'offer3', Colors.purple),
          offers('Money Transfer Offer', '', 'Get a scratch card with assuerd casbck and coupons on Money Transfer of Rs 500 or more . T&C apply', 'offer4', Colors.deepPurple),
          offers('Rs 50 Off on Flights', '', 'Get instant discount on flat 50 Rs on Flight ticket booking. T&C apply', 'offer5', Colors.blueGrey)
        ],
      ),
    );
  }
}
