import 'package:flutter/material.dart';

class FieldLogin extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  final String hintText;
  final bool obscureText;
  final Widget? prefixIcon;

  const FieldLogin({
    super.key, 
    required this.controller,
    required this.hintText,
    required this.obscureText,
    this.prefixIcon
  });

  @override
  State<FieldLogin> createState() => _FieldLoginState();
}

class _FieldLoginState extends State<FieldLogin> {
  bool x = false;
  Widget visible = const Icon(Icons.visibility,color: Colors.black87);
  void obsc(){
    x = widget.obscureText;
  }

  void toggleVisibility(){
    if (x == true){
      setState(() {
        visible = const Icon(Icons.visibility_off,color: Colors.black87);
      });
    }
    else{
      setState(() {
        visible = const Icon(Icons.visibility,color: Colors.black87);
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: widget.obscureText 
      ? TextField( // TRUE CONDITION
        controller: widget.controller,
        obscureText: x,
        decoration: InputDecoration(
          prefixIcon: widget.prefixIcon,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
          ),
          fillColor: Colors.grey.shade200,
          filled: true,
          hintText: widget.hintText,
          suffixIcon: Align(
            widthFactor: 1.0,
            heightFactor: 1.0,
            child: GestureDetector(
              onTap: () {
                setState((){
                  x = !x;
                  toggleVisibility();               
                });
              },
              child: visible
            ),
          ),
        ),
      ) 
      : TextField( // FALSE CONDITION
        controller: widget.controller,
        obscureText: widget.obscureText,
        decoration: InputDecoration(
          prefixIcon: widget.prefixIcon,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
          ),
          fillColor: Colors.grey.shade200,
          filled: true,
          hintText: widget.hintText,
        ),
      ),
    );
  }
}