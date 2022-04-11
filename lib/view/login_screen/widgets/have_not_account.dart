import 'package:flutter/material.dart';

class HaveNotAccount extends StatefulWidget {
  const HaveNotAccount({Key? key}) : super(key: key);

  @override
  State<HaveNotAccount> createState() => _HaveNotAccountState();
}

class _HaveNotAccountState extends State<HaveNotAccount> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don’t have an account? ",
          style: TextStyle(fontSize: 16),
        ),
        GestureDetector(
          onTap: () {},
          child: Text(
            "Sign Up",
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFFFF7643),
            ),
          ),
        ),
      ],
    );
    ;
  }
}
