import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {

  Widget emailField() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'you@example.com',
        labelText: 'Email Address',
      ),
    );
  }

  Widget passwordField() {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Password',
        labelText: 'Password',
      ),
      obscureText: true,
    );
  }

  Widget submitButton() {
    return RaisedButton(
      color: Colors.blue,
      textColor: Colors.white,
      onPressed: () {},
      child: Text('Login'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          emailField(),
          passwordField(),
          //SizedBox(height: 20.0),
          Container(
            margin:EdgeInsets.only(top: 20.0),
          ),
          submitButton(),
        ],
      ),
    );
  }
}