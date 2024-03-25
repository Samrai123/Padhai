import 'package:eduhub/components/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _passwordVisible = true;

  void initState() {
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(20),
        child: Flexible(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Login",
              style: kHeadline,
            ),
            Form(
                child: Column(
              children: [
                TextFormField(
                  style: kBodyText,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(18),
                      hintText: "Enter Email",
                      hintStyle: kBodyText,
                      labelText: "Email",
                      labelStyle: kBodyText,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(15)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.black87, width: 1),
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  style: kBodyText,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(18),
                      hintText: "Enter Password",
                      hintStyle: kBodyText,
                      labelText: "Password",
                      labelStyle: kBodyText,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(15)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.black87, width: 1),
                      ),
                      suffixIcon: IconButton(
                          icon: Icon(
                            _passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            // Update the state i.e. toogle the state of passwordVisible variable
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          })),
                  obscureText: !_passwordVisible,
                  onChanged: (value) {},
                  validator: (val) =>
                      val!.length < 8 ? 'Password too short.' : null,
                ),
                const SizedBox(
                  height: 60,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    width: MediaQuery.sizeOf(context).width,
                    height: MediaQuery.of(context).size.height * 0.06,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      "Login",
                      style: kBodyText,
                    ),
                  ),
                )
              ],
            ))
          ],
        )),
      )),
    );
  }
}
