import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});
  

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _obscureText = true;

  void _login() async{
    String email = emailController.text;
    String password = passwordController.text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    width: 500,
                    height: 866,
                    decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/SignIn.png'),
                      fit: BoxFit.cover,
                    ),
                    ),
                    child: Positioned(
                      child: Container(
                        width: 294,
                        height: 81,
                        margin: const EdgeInsets.symmetric(horizontal: 50),
                        alignment: Alignment.topLeft,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 340,
                              child: SizedBox(
                                width: 294,
                                height: 81,
                                child: Text(
                                  'Sign In',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 36,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 400,
                              child: SizedBox(
                                width: 294,
                                height: 81,
                                child: Text(
                                  'Sistem Pendataan Kesejahteraan Sosial untuk Desa Bojongsoang',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 480,
                              child: SizedBox(
                                width: 305,
                                height: 50,
                                child: Container(
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
                                          controller: passwordController,
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
                                ),
                              ),
                            ),
                            Positioned(
                              top: 560,
                              child: SizedBox(
                                width: 305,
                                height: 50,
                                child: Container(
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
                                        controller: passwordController,
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
                                          hintText: 'Password',
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
                                ),
                              ),
                            ),
                            Positioned(
                              top: 680,
                              left: 18,
                              child: SizedBox(
                                width: 275,
                                height: 50,
                                child: ElevatedButton(
                                  onPressed: () {
                                    //Navigator.pushNamed(context, '/home');
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Color(0xff064469),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'LOGIN',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ),
                            Positioned(
                              top: 815,
                              left: 35,
                              child: SizedBox(
                                width: 247,
                                height: 44,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      'Belum Punya Akun ? ',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black87,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        //Navigator.pushNamed(context, '/sign_up');
                                      },
                                      child: const Text(
                                        'Daftar',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff064469),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      ),
                    ),
                  ),
                ],
              ), // Set a specific height for the Container
            ),
          ],
        ),
      ),  
      
    );
  }
}


