import 'package:flutter/material.dart';
import 'add_barrier.dart';

class PatientView extends StatefulWidget {
  const PatientView({Key? key}) : super(key: key);
  @override
  _PatientViewState createState() => _PatientViewState();
}

class _PatientViewState extends State<PatientView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Patient Details',
              style: TextStyle(color: Colors.white)),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(children: [
              Column(
                children: <Widget>[
                  Card(
                    child: Column(children: const <Widget>[
                      ListTile(
                        title: Text(
                          "STUDY ID: KCH-0000-001",
                          style: TextStyle(
                              color: Colors.cyan, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ]),
                  ),
                  Card(
                      // ignore: prefer_const_literals_to_create_immutables
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                        Expanded(
                          child: ListTile(
                            title: Text("Gender: Male",
                                style: TextStyle(color: Colors.cyan)),
                            subtitle: Text('Marital Status: Married',
                                style: TextStyle(color: Colors.cyan)),
                          ),
                        ),
                        Expanded(
                          child: ListTile(
                            title: Text("Age: 27 Yrs",
                                style: TextStyle(color: Colors.cyan)),
                            subtitle: Text('Residence: Nyalenda',
                                style: TextStyle(color: Colors.cyan)),
                          ),
                        ),
                      ])),
                  Card(
                    child: Column(children: const [
                      ListTile(
                          title: Text("History",
                              style: TextStyle(
                                  color: Colors.cyan,
                                  fontWeight: FontWeight.bold)))
                    ]),
                  ),
                  Card(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Row(children: const [
                            Expanded(
                                child: ListTile(
                              title: Text("Last TCA: 2022 -10-20"),
                              subtitle: Text("VL COPIES: 1000 copies"),
                            )),
                            Expanded(
                                child: ListTile(
                              title: Text("ADAPT-1 ARM: SOC"),
                              subtitle: Text(""),
                            )),
                          ]),
                        ]),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(),
              ),
              Stack(alignment: FractionalOffset.bottomCenter, children: [
                Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          MaterialButton(
                            height: 40.0,
                            minWidth: 150.0,
                            color: Theme.of(context).primaryColor,
                            textColor: Colors.white,
                            child: Row(children: const [
                              Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              Text("Add barriers"),
                            ]),
                            onPressed: () => {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const AddBarrier()))
                            },
                            splashColor: Colors.redAccent,
                          ),
                          MaterialButton(
                            height: 40.0,
                            minWidth: 150.0,
                            color: Theme.of(context).primaryColor,
                            textColor: Colors.white,
                            child: Row(children: const [
                              Icon(
                                Icons.info,
                                color: Colors.white,
                              ),
                              Text("Suggestions"),
                            ]),
                            onPressed: () => {},
                            splashColor: Colors.redAccent,
                          )
                        ]))
              ]),
              Stack(alignment: FractionalOffset.bottomCenter, children: [
                Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          MaterialButton(
                            height: 40.0,
                            minWidth: 150.0,
                            color: Theme.of(context).primaryColor,
                            textColor: Colors.white,
                            child: Row(children: const [
                              Icon(
                                Icons.map_outlined,
                                color: Colors.white,
                              ),
                              Text("View locator"),
                            ]),
                            onPressed: () => {},
                            splashColor: Colors.redAccent,
                          ),
                          MaterialButton(
                            height: 40.0,
                            minWidth: 150.0,
                            color: Theme.of(context).primaryColor,
                            textColor: Colors.white,
                            child: Row(children: const [
                              Icon(
                                Icons.phone_android_rounded,
                                color: Colors.white,
                              ),
                              Text("Contact"),
                            ]),
                            onPressed: () => {},
                            splashColor: Colors.redAccent,
                          )
                        ]))
              ]),
            ]),
          ),
        ));
  }
}
