import 'dart:ffi';

import 'package:flutter/material.dart';

class signinform extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  const signinform({super.key,
    required this.hintText,
    required this.controller,
  });

  @override
  State<signinform> createState() => _signinformState();
}

class _signinformState extends State<signinform> {
  bool _obscureText = true;
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
              Icons.password,
              color: Color(0xff064469),
            ),
          ),
          SizedBox(
            width: 19,
          ),
          Container(
          width: 245,
          height: 50,
          child: TextField(
            controller: widget.controller,
            obscureText: _obscureText, // Use the _obscureText variable here
            decoration: InputDecoration(
              suffixIcon: Padding(
                padding: const EdgeInsets.only(right: 13),
                child: IconButton(
                  icon: Icon(
                    _obscureText
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: Color(0xff064469),
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                ),
              ),
              border: InputBorder.none,
              hintText: widget.hintText,
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