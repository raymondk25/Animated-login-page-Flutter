import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:async';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int activeIndex = 0;

  final List<String> _images = [
    'https://ouch-cdn2.icons8.com/Acn5SdiUhsjwrimDnf_lhWgD3anGtOfabV3IOY7maEs/rs:fit:196:196/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9zdmcvNTg4/LzNmMDU5Mzc0LTky/OTQtNDk5MC1hZGY2/LTA2YTkyMDZhNWZl/NC5zdmc.png',
    'https://ouch-cdn2.icons8.com/gaK4dfM5oKtHTshhn6I17iSdZfb1-IGB9Kw8KnW3_IA/rs:fit:196:196/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9zdmcvMTUv/ZjUzYTU4NDAtNjBl/Yy00ZWRhLWE1YWIt/ZGM1MWJmYjBiYjI2/LnN2Zw.png',
    'https://ouch-cdn2.icons8.com/6FibSsEhVyPGhXfGeq0YvGuZPvSwBJYkDRvmDN4ZUls/rs:fit:196:196/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9zdmcvNC84/MzcwMTY5OS1kYmU1/LTQ1ZmEtYmQ1Ny04/NTFmNTNjMTlkNTcu/c3Zn.png',
    'https://ouch-cdn2.icons8.com/b-f3FVCtUgTqXejtpfRaK-uWXAEgjnCUCbw9oncLwCU/rs:fit:196:192/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9zdmcvOTY5/L2NlMTY1MWM5LTRl/ZjUtNGRmZi05MjQ3/LWYzNGQ1MzhiOTQ0/Mi5zdmc.png',
  ];

  @override
  void initState() {
    super.initState();

    startTimer();
  }

  void startTimer() {
    Timer.periodic(Duration(seconds: 5), (timer) {
      setState(() {
        activeIndex++;
      });

      if (activeIndex == 4) {
        activeIndex = 0;
      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 50),
            FadeInUp(
              child: Container(
                height: 350,
                child: Stack(
                  children: _images.asMap().entries.map((e) {
                    return Positioned(
                      top: 0,
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: AnimatedOpacity(
                        duration: Duration(seconds: 1),
                        opacity: activeIndex == e.key ? 1 : 0,
                        child: Image.network(
                          e.value,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
            SizedBox(height: 40),
            FadeInUp(
              delay: Duration(milliseconds: 800),
              duration: Duration(milliseconds: 1500),
              child: TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Username or E-mail',
                  hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
                  labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                  prefixIcon: Icon(
                    FontAwesomeIcons.user,
                    color: Colors.black,
                    size: 18,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.grey.shade200, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 1.5,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            SizedBox(height: 20),
            FadeInUp(
              delay: Duration(milliseconds: 800),
              duration: Duration(milliseconds: 1500),
              child: TextField(
                obscureText: true,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Password',
                  hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
                  labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                  prefixIcon: Icon(
                    FontAwesomeIcons.lock,
                    color: Colors.black,
                    size: 18,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.grey.shade200, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 1.5,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            FadeInUp(
                delay: Duration(milliseconds: 800),
                duration: Duration(milliseconds: 1300),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                        ))
                  ],
                )),
            SizedBox(height: 10),
            FadeInUp(
              delay: Duration(milliseconds: 800),
              duration: Duration(milliseconds: 1300),
              child: MaterialButton(
                onPressed: () {},
                color: Colors.black,
                height: 45,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 5),
            FadeInUp(
                delay: Duration(milliseconds: 800),
                duration: Duration(milliseconds: 1300),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(color: Colors.grey.shade600, fontSize: 14),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Register',
                          style: TextStyle(color: Colors.blueAccent, fontSize: 14),
                        ))
                  ],
                ))
          ],
        ),
      ),
    ));
  }
}
