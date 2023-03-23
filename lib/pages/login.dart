import 'package:flutter/material.dart';
import 'package:final_qr/components/field.dart';
import 'package:final_qr/components/button.dart';
class LoginPage extends StatelessWidget{
  LoginPage({super.key});

  final userCont = TextEditingController();
  final passCont = TextEditingController();
  
  void signIn(){
    print("LOGINNNN");
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0x6631ca52),
                  Color(0x9931ca52),
                  Color(0xcc31ca52),
                  Color(0xff31ca52),
                ]
              )
              // color: Color.fromRGBO(241, 241, 241, 1)
            ),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 100),
                  
                  const Image
                  (
                    image: AssetImage('assets/ndmu.png'),
                    alignment: Alignment.center,
                    fit: BoxFit.fitHeight,
                    height: 200,
                  ),
            
                  const SizedBox(height: 70),
                  
                  FieldLogin( // USERNAME
                    controller: userCont, 
                    hintText: 'Username', 
                    obscureText: false,
                    prefixIcon: const Icon(
                      Icons.person,
                      color: Colors.black87,
                    ),
                  ),
            
                  const SizedBox(height: 40),
            
                  FieldLogin(
                    controller: passCont, 
                    hintText: 'Password', 
                    obscureText: true,
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: Colors.black87,
                    ),
                  ),
            
                  const SizedBox(height: 40),
            
                  Button(
                    onTap: signIn,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}