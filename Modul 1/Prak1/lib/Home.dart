import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 120,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 10, 169, 105),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  )),
              child: Stack(
                children: [
                  Positioned(
                    top: 30,
                    left: 340,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(7),
                      child: Container(
                        height: 40,
                        width: 40,
                        color: Color.fromARGB(255, 10, 169, 105),
                        child: const Icon(
                          Icons.notification_add_outlined,
                          size: 30,
                          color: Color.fromARGB(255, 68, 4, 231),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: const EdgeInsets.only(top: 33, left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good Afternoon',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Color.fromARGB(255, 1, 2, 23)),
                        ),
                        Text(
                          'Jirjis R.A',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Color.fromARGB(255, 1, 2, 23)),
                        ),
                      ],
                    ),
                  ),
                  ListView(
                    children: const <Widget>[
                      TextField(),
                    ],
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
