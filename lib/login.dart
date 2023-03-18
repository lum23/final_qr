import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Login extends StatefulWidget
{
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      body: AnnotatedRegion<SystemUiOverlayStyle>
      (
        value: SystemUiOverlayStyle.dark,
        child: GestureDetector
        (
          child: Stack
          (
            children: <Widget>
            [
              Container
              (
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration
                (
                  gradient: LinearGradient
                  (
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: 
                    [
                      Color(0x6631ca52),
                      Color(0x9931ca52),
                      Color(0xcc31ca52),
                      Color(0xff31ca52),
                    ]
                  )
                ),
                child: Container
                (
                  padding: const EdgeInsets.all(50),
                  child: Column
                  (
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>
                    [
                      const Image
                      (
                        image: AssetImage('assets/ndmu.png'),
                        alignment: Alignment.center,
                        fit: BoxFit.fitHeight,
                        height: 200,
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container
                        (
                          alignment: Alignment.center,
                          decoration: BoxDecoration
                          (
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: 
                            // ignore: prefer_const_literals_to_create_immutables
                            [
                              const BoxShadow
                              (
                                color: Colors.black38,
                                blurRadius: 6,
                                offset: Offset(0, 2)
                              )
                            ]
                          ),
                          height: 60,
                          child: const TextField
                          (
                            style: TextStyle
                            (
                              color: Colors.black87,
                            ),
                            decoration: InputDecoration
                            (
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(top: 14),
                              prefixIcon: Icon
                              (
                                Icons.person,
                                color: Colors.black,
                              ),
                              hintText: 'Username',
                              hintStyle: TextStyle
                              (
                                color: Colors.black26
                              )
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container
                        (
                          alignment: Alignment.center,
                          decoration: BoxDecoration
                          (
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: 
                            // ignore: prefer_const_literals_to_create_immutables
                            [
                              const BoxShadow
                              (
                                color: Colors.black38,
                                blurRadius: 6,
                                offset: Offset(0, 2)
                              )
                            ]
                          ),
                          height: 60,
                          child: const TextField
                          (
                            obscureText: true,
                            keyboardType: TextInputType.visiblePassword,
                            style: TextStyle
                            (
                              color: Colors.black87,
                            ),
                            decoration: InputDecoration
                            (
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(top: 14),
                              prefixIcon: Icon
                              (
                                Icons.lock,
                                color: Colors.black,
                              ),
                              hintText: 'Passowrd',
                              hintStyle: TextStyle
                              (
                                color: Colors.black26
                              )
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          right: 16.0,
                          top: 8.0,
                          bottom: 8.0
                        ),
                        child: Container
                        (
                          padding: const EdgeInsets.symmetric(vertical: 25),
                          width: double.infinity,
                          child: ElevatedButton
                          (
                            onPressed: () => print("PASS"), 
                            
                            child: const Text
                            (
                              'Login',
                              style: TextStyle
                              (
                                fontSize: 20
                              ),
                            )
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}