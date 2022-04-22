import 'package:flutter/material.dart';
import 'patientlit.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _textusername = TextEditingController();
  final _text = TextEditingController();

  bool _validate = false;
  bool _validatepass = false;
  @override
  void dispose() {
    _text.dispose();
    _textusername.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Patient Navigation App',
              style: TextStyle(color: Colors.white)),
        ),
        body: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'I-NAP',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'Sign in',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    )),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    onChanged: (_textusername) {
                      setState(() {
                        if (_textusername.isEmpty) {
                          _validate = true;
                        } else {
                          _validate = false;
                        }
                      });
                    },
                    controller: _textusername,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                      errorText: _validate ? 'Username Can\'t Be Empty' : null,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    onChanged: (_text) {
                      setState(() {
                        if (_text == null) {
                          _validatepass = true;
                        } else {
                          _validatepass = false;
                        }
                      });
                    },
                    obscureText: true,
                    controller: _text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      errorText:
                          _validatepass ? 'Password Can\'t Be Empty' : null,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    //forgot password screen
                  },
                  child: const Text(
                    'Forgot Password',
                  ),
                ),
                Container(
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      child: const Text('Login',
                          style: TextStyle(color: Colors.white)),
                      onPressed: () {
                        setState(() {
                          if (_text.text.isEmpty) {
                            _validatepass = true;
                          } else {
                            _validatepass = false;
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const RegisterScreen()));
                          }
                        });
                      },
                    )),
                // Row(
                //   children: <Widget>[
                //     // const Text('Does not have account?'),
                //     TextButton(
                //       child: const Text(
                //         'Create an ccount',
                //         style: TextStyle(fontSize: 20),
                //       ),
                //       onPressed: () {
                //         //signup screen
                //       },
                //     )
                //   ],
                //   mainAxisAlignment: MainAxisAlignment.center,
                // ),
              ],
            )));
  }
}
