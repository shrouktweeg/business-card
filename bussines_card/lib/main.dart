import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BusinessCard(),
  ));
}

class BusinessCard extends StatelessWidget {
  const BusinessCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2B475E),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 111,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              backgroundImage: AssetImage('images/businesscard.png'),
              radius: 110,
            ),
          ),
          const Text(
            'Tharwat Samy',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontFamily: 'Pacifico',
            ),
          ),
          const Text(
            'FLUTTER DEVELOPER',
            style: TextStyle(
                fontSize: 18,
                color: Color(0xFF6C8090),
                fontWeight: FontWeight.bold),
          ),
          const Divider(
            thickness: 0.10,
            color: Color(0xFF6C8090),
            indent: 60,
            endIndent: 60,
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            child: const ListTile(
              leading: Icon(
                Icons.phone,
                size: 32,
                color: Color(0xff2B475E),
              ),
              title: Text(
                '(+20) 123546779',
                style: TextStyle(fontSize: 22),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            height: 65,
            child: const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Icon(
                    Icons.mail,
                    size: 32,
                    color: Color(0xff2B475E),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 22.0),
                  child: Text(
                    'tharwatsamy33@gmail.com',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
