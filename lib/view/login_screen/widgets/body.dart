import 'package:flutter/material.dart';
import 'package:flutter_task/view/components/socials.dart';
import 'package:flutter_task/view/login_screen/widgets/have_not_account.dart';
import 'package:flutter_task/view/login_screen/widgets/textfieldsform.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    final sizeWidget = MediaQuery.of(context).size;
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: sizeWidget.height * 0.04),
                const Text(
                  "Welcome Back",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "Sign in with your email and password  \nor continue with social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: sizeWidget.height * 0.08),
                TextForms(),
                SizedBox(height: sizeWidget.height * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Socials(
                        icon: "assets/icons/google-icon.svg",
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Socials(
                        icon: "assets/icons/facebook-2.svg",
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Socials(
                        icon: "assets/icons/twitter.svg",
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                HaveNotAccount(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
