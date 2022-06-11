import 'package:flutter/material.dart';
import 'package:instant_pay/balance.dart';
import 'package:instant_pay/buttons.dart';
import 'package:instant_pay/home.dart.dart';
import 'package:instant_pay/rewards.dart';

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
          Home(),
          Balance(),
          Center(
            child: Text(
              "It's sunny here",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Rewards(),
        ],
      ),
    );
  }
}
