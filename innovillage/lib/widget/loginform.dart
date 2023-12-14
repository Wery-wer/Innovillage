import 'package:flutter/material.dart';

class loginform extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  const loginform({super.key,
    required this.hintText,
    required this.controller,
  });

  @override
  State<loginform> createState() => _loginformState();
  bool _obscureText = true;
}

class _loginformState extends State<loginform> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border(
          top: BorderSide(width: 2.0, color:Color(0xff064469)),
          left: BorderSide(width: 2.0, color:Color(0xff064469)),
          right: BorderSide(width: 2.0, color:Color(0xff064469)),
          bottom: BorderSide(width: 2.0, color:Color(0xff064469))
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 10,
          ),
          Container(
            child: Icon(
              Icons.person,
              color: Color(0xff064469),
            ),
          ),
          SizedBox(
            width: 17,
          ),
          Container(
            width: 210,
            height: 50,
            child: TextField(
              controller: widget.controller,
              obscureText: false,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Email or Username',
                hintStyle: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff777777),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}