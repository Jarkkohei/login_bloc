import 'package:flutter/material.dart';
import '../blocs/bloc.dart';
import '../blocs/provider.dart';

class LoginScreen extends StatelessWidget {

  Widget emailField(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.email,
      builder: (BuildContext context, snapshot) {
        return TextField(
          /* Alternate way of passing on the value
          onChanged: (String newValue) {
            bloc.changeEmail(newValue),
          },
          */
          onChanged: bloc.changeEmail,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: 'you@example.com',
            labelText: 'Email Address',
            errorText: snapshot.error,
          ),
        );
      },
    );
  }

  Widget passwordField(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.password,
      builder: (BuildContext context, snapshot) {
        return TextField(
          onChanged: bloc.changePassword,
          decoration: InputDecoration(
            hintText: 'Password',
            labelText: 'Password',
            errorText: snapshot.error
          ),
          obscureText: true,
        );
      },
    );
  }

  Widget submitButton(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.submitValid,
      builder: (BuildContext context, snapshot) {
        return RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          onPressed: snapshot.hasError ? null : () {
            print('Hi There');
          },
          child: Text('Login'),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final _bloc = Provider.of(context);

    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          emailField(_bloc),
          passwordField(_bloc),
          //SizedBox(height: 20.0),
          Container(
            margin:EdgeInsets.only(top: 20.0),
          ),
          submitButton(_bloc),
        ],
      ),
    );
  }
}