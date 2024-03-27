import 'package:eduhub/auth/login_main.dart';
import 'package:eduhub/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
            Container(
              alignment: Alignment.center,
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.of(context).size.height * 0.05,
              child: Image.asset(
                'assets/images/logo.png',
                width: 200,
                height: 150,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Register Your Account",
              style: kBodyTextB,
            ),
            const SizedBox(
              height: 10,
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
                  keyboardType: TextInputType.phone,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(18),
                      hintText: "Enter Phone Number",
                      hintStyle: kBodyText,
                      labelText: "Phone Number",
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
                  height: 20,
                ),
                TextFormField(
                  style: kBodyText,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(18),
                      hintText: "Enter Confirm Password",
                      hintStyle: kBodyText,
                      labelText: "Confirm Password",
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
                  height: 25,
                ),
                const SizedBox(
                  height: 25,
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
                      "Register",
                      style: kBodyText,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have a account?", style: kBodyText),
                    const SizedBox(
                      width: 2,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.rightToLeft,
                                child: Login()));
                      },
                      child: const Text("Sign In",
                          style: TextStyle(
                              color: Color.fromARGB(255, 61, 114, 158),
                              fontSize: 15,
                              fontFamily: 'CourierPrime')),
                    )
                  ],
                )),
              ],
            ))
          ],
        )),
      )),
    );
  }
}
