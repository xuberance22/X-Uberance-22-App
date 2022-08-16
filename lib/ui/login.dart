import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LogInPage extends StatefulWidget {
  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  // #0a3b70
  final Color DEEP_BLUE = Color(0xff0a3b70);
  // #3e6896
  final Color LIGHT_BLUE = Color(0xff3e6896);

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: WillPopScope(
        onWillPop: () async {
          Navigator.pushNamed(context, "/");
          return false;
        },
        child: _backgroundImageWithChild(
          Form(
            key: _key,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SizedBox(
                      height: 100,
                      width: 120,
                      child: Image.asset("images/lines.png"),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Hero(
                          tag: "LOGIN",
                          child: Image.asset("images/LOGIN.png",
                              height: 50, width: 200),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                      ],
                    ),
                  ],
                ),
                _fieldWithValidator(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your email.";
                    } else {
                      return null;
                    }
                  },
                  obscureText: false,
                  controller: _emailController,
                  label: "Email",
                ),
                _fieldWithValidator(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your password.";
                    } else {
                      return null;
                    }
                  },
                  obscureText: true,
                  controller: _passwordController,
                  label: "Password",
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 100,
                      width: 120,
                      child: Image.asset("images/linesRevert.png"),
                    ),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        SizedBox(
                          width: 140,
                          height: 50,
                          child: Consumer<FirebaseAuth>(
                            builder: (ctx, auth, __) => ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                  DEEP_BLUE,
                                ),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100),
                                    side: BorderSide(
                                      color: DEEP_BLUE,
                                    ),
                                  ),
                                ),
                              ),
                              onPressed: () {
                                if (_key.currentState!.validate()) {
                                  _login(auth, ctx);
                                }
                              },
                              child: Text(
                                "Submit",
                                style: TextStyle(
                                    fontSize: 17, fontFamily: "texts"),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget noInternetAlert(BuildContext context) {
    return AlertDialog(
      backgroundColor: LIGHT_BLUE,
      title: Text(
        "You require a internet connection to log in.",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      actions: <Widget>[
        _buttonWithAction(
          action: () => Navigator.pop(context),
          text: Text("OK"),
        ),
      ],
    );
  }

  Widget _buttonWithAction({required Function() action, required Text text}) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          DEEP_BLUE,
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
            side: BorderSide(
              color: DEEP_BLUE,
            ),
          ),
        ),
      ),
      onPressed: action,
      child: text,
    );
  }

  Widget _fieldWithValidator({
    required String? Function(String?) validator,
    required bool obscureText,
    required TextEditingController controller,
    required String label,
  }) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        height: 49,
        width: 300,
        child: TextFormField(
          controller: controller,
          obscureText: obscureText,
          style: TextStyle(
            fontSize: 19,
            color: Colors.white,
          ),
          cursorColor: Colors.white,
          textAlignVertical: TextAlignVertical.top,
          decoration: InputDecoration(
            labelText: label,
            labelStyle: TextStyle(
              fontSize: 12,
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: DEEP_BLUE,
              ),
            ),
            filled: true,
            fillColor: LIGHT_BLUE,
          ),
          validator: validator,
        ),
      ),
    );
  }

  void _login(FirebaseAuth auth, BuildContext context) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );

      Navigator.popAndPushNamed(context, "/profile/registration");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found' ||
          e.code == 'wrong-password' ||
          e.code == 'user-disabled') {
        showDialog(
          context: context,
          builder: (c) => incorrectCredentialsAlert(c),
        );
      } else if (e.code == 'invalid-email') {
        showDialog(
          context: context,
          builder: (c) => incorrectEmailAlert(c),
        );
      } else if (e.code == "network-request-failed") {
        showDialog(
          context: context,
          builder: (c) => noInternetAlert(c),
        );
      }
    }
  }

  AlertDialog incorrectEmailAlert(BuildContext context) {
    return AlertDialog(
      backgroundColor: LIGHT_BLUE,
      title: Text("Invalid email"),
      content: Text(
        "Please ensure that the entered email is correct.",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      actions: [
        _buttonWithAction(
          action: () => Navigator.pop(context),
          text: Text("OK"),
        ),
      ],
    );
  }

  AlertDialog incorrectCredentialsAlert(BuildContext context) {
    return AlertDialog(
      backgroundColor: LIGHT_BLUE,
      title: Text(
        "Invalid email or password",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      content: Text(
        "Please verify that you have entered the correct credentials.",
      ),
      actions: [
        _buttonWithAction(
          action: () => Navigator.pop(context),
          text: Text("OK"),
        ),
      ],
    );
  }

  Widget successfulLoginAlert(BuildContext c) {
    return AlertDialog(
      backgroundColor: LIGHT_BLUE,
      title: Text(
        "Login successful.",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      actions: [
        _buttonWithAction(
          action: () {
            Navigator.pushNamed(c, "/");
          },
          text: Text("Back to home"),
        ),
      ],
    );
  }

  Widget _backgroundImageWithChild(Widget child) {
    return Container(
      constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/sponsors_background.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
