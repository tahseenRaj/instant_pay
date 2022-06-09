import 'package:flutter/material.dart';
import 'package:instant_pay/buttons.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181A20),
      appBar: AppBar(
        toolbarHeight: 100,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20)),
        ),
        elevation: 0.00,
        backgroundColor: const Color(0xFF343645),
        // leadingWidth: 45,
        leading: const Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: CircleAvatar(
            backgroundColor: Color.fromARGB(100, 176, 190, 197),
            radius: 20,
            child: CircleAvatar(
              radius: 17,
              backgroundImage: AssetImage('assets/images/user.jpg'),
            ),
          ),
        ),
        // titleSpacing: 25,
        title: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(100, 176, 190, 197),
            borderRadius: BorderRadius.circular(25),
          ),
          height: 40,
          child: TextField(
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                hintText: " Search Users, ID's etc",
                hintStyle: const TextStyle(color: Colors.white),
                isDense: true,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                suffixIcon: IconButton(
                  color: Colors.white,
                  iconSize: 25,
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                )),
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              backgroundColor: Color.fromARGB(100, 176, 190, 197),
              child: Icon(
                Icons.notification_add_outlined,
                size: 28,
                color: Colors.white,
              ),
            ),
          )
        ],
        bottom: TabBar(
          controller: _tabController,
          indicator: const UnderlineTabIndicator(
            borderSide: BorderSide(width: 3.0, color: Colors.red),
            insets: EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
          ),
          tabs: const <Widget>[
            Tab(
              iconMargin: EdgeInsets.all(0),
              text: 'Home',
              // child: Text('Home', style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1),),
            ),
            Tab(
              text: 'Balance',
            ),
            Tab(
              text: 'Offers',
            ),
            Tab(
              text: 'Rewards',
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Money Transfer",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18),
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      elevation: null,
                      primary: Colors.white70,
                      backgroundColor: const Color.fromARGB(111, 158, 158, 158),
                      padding: const EdgeInsets.all(3),
                      minimumSize: Size.zero,
                    ),
                    icon: const Text(
                      'More',
                      style: TextStyle(fontSize: 12),
                    ),
                    label: const Icon(
                      Icons.arrow_forward_ios,
                      size: 10,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      billingBtn(Colors.deepPurpleAccent, 'Scan QR Code', const Icon(Icons.qr_code_scanner)),
                      const SizedBox(
                        width: 15,
                      ),
                      billingBtn(Colors.green, 'Send To Contact', const Icon(Icons.person_add_alt_outlined)),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      billingBtn(const Color(0xFF8EC62D), 'Send To Bank', const Icon(Icons.account_balance_outlined)),
                      const SizedBox(
                        width: 15,
                      ),
                      billingBtn(Colors.purple, 'Self Transfer', const Icon(Icons.sync)),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Recharge & Bill Payments",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18),
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      elevation: null,
                      primary: Colors.white70,
                      backgroundColor: const Color.fromARGB(111, 158, 158, 158),
                      padding: const EdgeInsets.all(3),
                      minimumSize: Size.zero,
                    ),
                    icon: const Text(
                      'More',
                      style: TextStyle(fontSize: 12),
                    ),
                    label: const Icon(
                      Icons.arrow_forward_ios,
                      size: 10,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      billingBtn(Colors.teal, 'Mobile Recharge',
                          const Icon(Icons.phone_android)),
                      const SizedBox(
                        width: 15,
                      ),
                      billingBtn(Colors.cyan, 'Electricity Bill',
                          const Icon(Icons.sunny)),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      billingBtn(Colors.red, 'DTH Recharge',
                          const Icon(Icons.play_circle_outline)),
                      const SizedBox(
                        width: 15,
                      ),
                      billingBtn(Colors.blueGrey, 'Postpaid Bill',
                          const Icon(Icons.receipt_long)),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Ticket Booking",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18),
                  ),
                ],
              ),
              const SizedBox(height: 15,),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      servicesBtn(Icons.movie_creation_outlined, 'Movies'),
                      const SizedBox(
                        width: 10,
                      ),servicesBtn(Icons.train_outlined, 'Trains'),
                      const SizedBox(
                        width: 10,
                      ),
                      servicesBtn(Icons.directions_bus_rounded, 'Bus'),
                      const SizedBox(
                        width: 10,
                      ),
                      servicesBtn(Icons.flight, 'Flights'),
                      const SizedBox(
                        width: 10,
                      ),
                      servicesBtn(Icons.directions_car_rounded, 'Car'),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "More Services",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18),
                  ),
                ],
              ),
              const SizedBox(height: 15,),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      servicesBtn(Icons.insert_chart_outlined_sharp, 'Invest'),
                      const SizedBox(
                        width: 10,
                      ),servicesBtn(Icons.attach_money, 'Loan'),
                      const SizedBox(
                        width: 10,
                      ),
                      servicesBtn(Icons.health_and_safety_rounded, 'Insurance'),
                      const SizedBox(
                        width: 10,
                      ),
                      servicesBtn(Icons.minor_crash, 'Fastag'),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(child: Container())
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Recent Transactions",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18),
                  ),
                ],
              ),
              const SizedBox(height: 15,),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      peoples('IronMan', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsuv4pfCUs_CCEfmv7WniTKEU6i7DbKJ5BKw&usqp=CAU'),
                      const SizedBox(
                        width: 10,
                      ),peoples('Thor', 'https://e7.pngegg.com/pngimages/759/233/png-clipart-thor-illustration-thor-cartoon-marvel-cinematic-universe-marvel-animation-comics-thor-avengers-superhero.png'),
                      const SizedBox(
                        width: 10,
                      ),peoples('Peter', 'https://images.unsplash.com/photo-1635805737707-575885ab0820?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
                      const SizedBox(
                        width: 10,
                      ),peoples('Natasha', 'https://i.guim.co.uk/img/media/c3d1d8324ea3d9adb3ea91dd5a71c1760a948d6f/0_78_2861_1716/master/2861.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=48836a651742d22fb36f967767c0c94e'),
                      const SizedBox(
                        width: 10,
                      ),peoples('Steve', 'https://www.ed92.org/wp-content/uploads/2021/06/captain-america-2-scaled.jpg')
                    ],
                  ),
                ],
              ),

            ],
          ),
          const Center(
            child: Text(
              "It's rainy here",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Center(
            child: Text(
              "It's sunny here",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Center(
            child: Text(
              "It's cloudy here",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
