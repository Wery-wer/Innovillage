import 'dart:async';
import 'package:innovillage/screen/sign_in.dart';
import 'package:flutter/material.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 412,
              height: 866,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/SplashScreen.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                margin: EdgeInsets.only(top: 730),
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) => SignInPage()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffFFFFFF), // Ubah warna teks
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(39),
                    ),
                    minimumSize: const Size(360, 58),
                    elevation: 100,
                    shadowColor: Colors.black12,
                  ),
                  child: const Text(
                    'GET STARTED',
                    style: TextStyle(fontFamily: 'Poppins' ,fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black87),
                  ),
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}
