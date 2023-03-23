import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  // const Button({Key? key}) : super(key: key);

  final Function()? onTap;

  const Button({super.key, required this.onTap});

  @override 
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Ink(
        child: Container(
          padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white, 
            borderRadius: BorderRadius.circular(10),
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.grey.shade500,
            //     offset: const Offset(4, 4),
            //     blurRadius: 15,
            //     spreadRadius: 1 
            //   ),
            //   const BoxShadow(
            //     color: Colors.white,
            //     offset: Offset(-4, -4),
            //     blurRadius: 15,
            //     spreadRadius: 1 
            //   )
            // ]
          ),
          child: const Center(
            child: Text(
              'Login',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w500
              ),
            ),
          ),
        ),
      ),
    );
  }
}
