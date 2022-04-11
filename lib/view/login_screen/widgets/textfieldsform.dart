import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TextForms extends StatefulWidget {
  const TextForms({Key? key}) : super(key: key);

  @override
  State<TextForms> createState() => _TextFormsState();
}

class _TextFormsState extends State<TextForms> {
  final _formKey = GlobalKey<FormState>();
  bool? remember = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: "Email",
              hintText: "Enter your email",
              // If  you are using latest version of flutter then lable text and hint text shown like this
              // if you r using flutter less then 1.20.* then maybe this is not working properly
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: SvgPicture.asset(
                "assets/icons/Mail.svg",
                height: 18,
              ),
            ),
          ),

          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Password",
              hintText: "Enter your password",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 20, 20),
                child: SvgPicture.asset(
                  "assets/icons/Lock.svg",
                  height: 18,
                ),
              ),
            ),
          ),

          SizedBox(height: 30),
          // buildPasswordFormField(),
          SizedBox(height: 30),
          Row(
            children: [
              Checkbox(
                value: remember,
                activeColor: Color(0xFFFF7643),
                onChanged: (value) {
                  setState(() {
                    remember = value;
                  });
                },
              ),
              Text("Remember me"),
              Spacer(),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "Forgot Password",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
          // FormError(errors: errors),
          SizedBox(height: 20),

          SizedBox(
            width: double.infinity,
            height: 56,
            child: TextButton(
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                primary: Colors.white,
                backgroundColor: Color(0xFFFF7643),
              ),
              onPressed: () {},
              child: Text(
                "Continue",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
