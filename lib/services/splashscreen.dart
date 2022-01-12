import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:news_app_19710031/main.dart';

class SplashScreen extends StatefulWidget {
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  void initState() {
    super.initState();
    splashscreenStart();
  }

  splashscreenStart() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage('assets/img/riatul.jpg'),
          ),
          Text(
            "Riatul Jannah",
            style: TextStyle(
              fontFamily: 'BebasNeue',
              color: Colors.black,
              fontSize: 25,
            ),
          ),
          Text(
            "PRODI SISTEM INFORMASI",
            style: TextStyle(
              color: Colors.black,
              fontSize: 23,
              letterSpacing: 2.5,
            ),
          ),
          SizedBox(
            height: 50.0,
            width: 150.0,
            child: Divider(
              color: Colors.yellow,
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: Icon(
                Icons.account_circle,
                color: Colors.yellow,
              ),
              title: Text(
                "NPM : 19710031",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.yellow,
              ),
              title: Text(
                "Alamat :Komplek Andai Jaya Persada Blok C RT.32 RW 03 ",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: Icon(
                CupertinoIcons.house_alt,
                color: Colors.yellow,
              ),
              title: Text(
                "TTL : Tabalong, 05 Juni 2002",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: Icon(
                Icons.cabin_outlined,
                color: Colors.yellow,
              ),
              title: Text(
                "5A SI Reguler Pagi Banjarmasin",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
// class cardProfile extends StatelessWidget {
//   const cardProfile({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//       ),
//     );
//   }
// }

