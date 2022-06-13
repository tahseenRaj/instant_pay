import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Receive extends StatelessWidget {
  const Receive({Key? key}) : super(key: key);

  final payid = 'xyz@987654321';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181A20),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(16.0),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 47, 51, 61),
                  borderRadius: BorderRadius.circular(25)),
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Receive Money',
                            style: TextStyle(color: Colors.white, fontSize: 20),
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
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          color: Color.fromARGB(255, 81, 88, 107),
                          width: 10.0),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Image(
                        image: NetworkImage(
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/QR_code_for_mobile_English_Wikipedia.svg/1200px-QR_code_for_mobile_English_Wikipedia.svg.png'),
                        fit: BoxFit.cover),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Other Options",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  DefaultTextStyle(
                    style: TextStyle(color: Colors.white),
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 47, 51, 61),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Your Pay ID',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Text(
                                payid,
                                style: const TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(width: 10),
                              IconButton(
                                  onPressed: () {
                                    Clipboard.setData(
                                            ClipboardData(text: payid))
                                        .then((result) {
                                      const snackBar = SnackBar(
                                        backgroundColor: Colors.white,
                                        behavior: SnackBarBehavior.floating,
                                        margin: EdgeInsets.only(bottom: 20, right: 20, left: 20),
                                        content: Text(
                                          'Copied to Clipboard',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      );
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(snackBar);
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.copy,
                                    color: Colors.white,
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: TextButton(
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.only(left: 20, right: 10),
                          primary: Colors.white,
                          backgroundColor: const Color.fromARGB(255, 47, 51, 61),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Show bank account details',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.arrow_forward_ios_rounded),
                          ],
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
