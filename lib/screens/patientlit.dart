import 'package:flutter/material.dart';
import 'patient_view.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Patients List',
              style: TextStyle(color: Colors.white)),
        ),
        body: Column(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text('LTFU Patients',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.cyan,
                        fontWeight: FontWeight.bold))),
            Padding(
                padding: const EdgeInsets.all(10),
                child: Table(
                    border: TableBorder.all(width: 1, color: Colors.purple),
                    children: [
                      const TableRow(
                          decoration: BoxDecoration(
                            color: Colors.cyan,
                          ),
                          children: [
                            Text('Study ID',
                                textAlign: TextAlign.center,
                                textScaleFactor: 1.2,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                            Text('Name',
                                textAlign: TextAlign.center,
                                textScaleFactor: 1.2,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                            Text('Action',
                                textAlign: TextAlign.center,
                                textScaleFactor: 1.2,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold))
                          ]),
                      TableRow(children: [
                        const Text(
                          'KCH-0001-000',
                          textScaleFactor: 1.2,
                          textAlign: TextAlign.center,
                        ),
                        const Text(
                          'John Doe',
                          textScaleFactor: 1.2,
                          textAlign: TextAlign.center,
                        ),
                        TextButton(
                          child: const Text(
                            'View Data',
                            textAlign: TextAlign.center,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const PatientView()));
                          },
                        ),
                      ]),
                      TableRow(children: [
                        const Text(
                          'KCH-0001-000',
                          textScaleFactor: 1.2,
                          textAlign: TextAlign.center,
                        ),
                        const Text(
                          'John Doe',
                          textScaleFactor: 1.2,
                          textAlign: TextAlign.center,
                        ),
                        TextButton(
                          child: const Text(
                            'View Data',
                            textAlign: TextAlign.center,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const PatientView()));
                          },
                        ),
                      ]),
                      TableRow(children: [
                        const Text(
                          'KCH-0001-000',
                          textScaleFactor: 1.2,
                          textAlign: TextAlign.center,
                        ),
                        const Text(
                          'John Doe',
                          textScaleFactor: 1.2,
                          textAlign: TextAlign.center,
                        ),
                        TextButton(
                          child: const Text(
                            'View Data',
                            textAlign: TextAlign.center,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const PatientView()));
                          },
                        ),
                      ]),
                    ])),
            Expanded(
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          RaisedButton(
                            padding: const EdgeInsets.all(10),
                            onPressed: () {},
                            child: const Text('Refresh',
                                style: TextStyle(fontSize: 20)),
                            color: Colors.blue,
                            textColor: Colors.white,
                            elevation: 5,
                          ),
                          RaisedButton(
                            onPressed: () {},
                            child: const Text('Contact',
                                style: TextStyle(fontSize: 20)),
                            color: Colors.blue,
                            textColor: Colors.white,
                            elevation: 5,
                          )
                        ])))
          ],
        ));
  }
}
