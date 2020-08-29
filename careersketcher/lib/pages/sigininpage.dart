import 'package:flutter/material.dart';
import 'package:testapp/pages/loginpage.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController repass = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController otp = TextEditingController();
  bool _isLoading = false;
  bool emailValid(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    return (!regex.hasMatch(value)) ? false : true;
  }

  signUp(
      {String username,
      String email,
      String firstPassword,
      String secondPassword}) async {
    Map data = {
      'name': username,
      'email': email,
      'first-password': firstPassword,
      'second-password': secondPassword,
    };

    // var jsonResponse;
    // var response = await http.post('https://ebmc.herokuapp.com/user/register/',
    //     headers: <String, String>{
    //       'Content-type': 'application/json;charset=UTF-8',
    //     },
    //     body: jsonEncode(data));
    // if (response.statusCode >= 200 && response.statusCode < 300) {
    //   jsonResponse = jsonDecode(response.body);
    //   if (jsonResponse != null) {
    //     print(jsonResponse);
    //   }
    // } else {
    //   print(response.body);
    //   print('hello');
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Center(
              child: Container(
                child: Image.asset('assets/images/test.png'),
                margin: EdgeInsets.fromLTRB(
                    0, MediaQuery.of(context).size.height / 20, 0, 0),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: <Widget>[
                buildText(
                    labelTxt: "Username",
                    textEdtCntrl: username,
                    hintTxt: "Enter Your Username"),
                buildText(
                    labelTxt: "Email",
                    textEdtCntrl: email,
                    hintTxt: "Enter Your Email"),
                buildText(
                    labelTxt: "Password",
                    textEdtCntrl: password,
                    hintTxt: "Enter Your Password"),
                buildText(
                    labelTxt: "Confirm Password",
                    textEdtCntrl: repass,
                    hintTxt: "Re-Enter Your Password To Confirm"),
                Align(
                  alignment: Alignment(1, 0),
                  child: RaisedButton(
                    color: Colors.lightBlue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {
                      if (emailValid(email.text) && password.text.length >= 8) {
                        signUp(
                            username: username.text,
                            email: email.text,
                            firstPassword: password.text,
                            secondPassword: repass.text);
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (context) => LoginPage()),
                            (route) => false);
                      }
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Text("Create account"),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(1, 0.7),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Text("Already have an account?"),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LoginPage()));
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "Login",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  TextField buildText(
      {String labelTxt, TextEditingController textEdtCntrl, String hintTxt}) {
    return TextField(
      controller: textEdtCntrl,
      decoration: InputDecoration(
          border: InputBorder.none,
          labelText: labelTxt,
          hintText: hintTxt,
          labelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          )),
    );
  }
}
