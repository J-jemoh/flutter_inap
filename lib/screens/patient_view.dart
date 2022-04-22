import 'package:flutter/material.dart';
import 'add_barrier.dart';
import 'locator.dart';
import 'loginscreen.dart';

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
          actions: [
            Theme(
              data: Theme.of(context).copyWith(
                  textTheme: TextTheme().apply(bodyColor: Colors.black),
                  dividerColor: Colors.white,
                  iconTheme: IconThemeData(color: Colors.white)),
              child: PopupMenuButton<int>(
                color: Colors.cyan,
                itemBuilder: (context) => [
                  PopupMenuItem<int>(value: 0, child: Text("Setting")),
                  const PopupMenuItem<int>(
                      value: 1, child: Text("Privacy Policy page")),
                  const PopupMenuDivider(),
                  PopupMenuItem<int>(
                      value: 2,
                      child: Row(
                        children: const [
                          Icon(
                            Icons.logout,
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text("Logout")
                        ],
                      )),
                ],
                onSelected: (item) => selecteditem(context, item),
              ),
            ),
          ],
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
                            onPressed: () => {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Locator()))
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

void selecteditem(BuildContext context, item) {
  switch (item) {
    case 0:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => LoginScreen()));
      break;
    case 1:
      print("Privacy Clicked");
      break;
    case 2:
      print("User Logged out");
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => LoginScreen()),
          (route) => false);
      break;
  }
}
