import 'dart:ui';

import 'package:flutter/material.dart';
import 'add_barrier.dart';
import 'locator.dart';
import 'loginscreen.dart';
import 'patientlit.dart';
import '/api/getparticipant.dart';
import '/api/participant.dart';
import '/models/participant.dart';
import 'patient_rlshp.dart';
import 'suggestions.dart';
import 'package:url_launcher/url_launcher.dart';

class MockupPatientView extends StatefulWidget {
  // PatientView({required this.participant_id});
  // ignore: non_constant_identifier_names
  const MockupPatientView({
    Key? key,
  }) : super(key: key);

  @override
  _MockupPatientViewState createState() => _MockupPatientViewState();
}

class _MockupPatientViewState extends State<MockupPatientView> {
  // ignore: non_constant_identifier_names

  // Getparticipantid participant_id;
  // _PatientViewState(this.participant_id);
  // ignore: non_constant_identifier_names
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('KLM-0000-000', style: TextStyle(color: Colors.white)),
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
                  color: Colors.grey,
                  child: Column(children: const <Widget>[
                    ListTile(
                      title: Text(
                        "PATIENT ID: KLM-0000-000 ",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
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
                          title: Text("Gender: M",
                              style: TextStyle(color: Colors.cyan)),
                          subtitle: Text('Facility: Lumumba',
                              style: TextStyle(color: Colors.cyan)),
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          title: Text("Age: 23 yrs",
                              style: TextStyle(color: Colors.cyan)),
                          subtitle: Text('Residence: Mamboleo',
                              style: TextStyle(color: Colors.cyan)),
                        ),
                      ),
                    ])),
                Card(
                  color: Colors.grey,
                  child: Column(children: const [
                    ListTile(
                        title: Text("Buddy/Caregiver",
                            style: TextStyle(
                                color: Colors.white,
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
                            title: Text("Name: John Test "),
                            subtitle: Text("Phone: +25476542312453",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          )),
                          Expanded(
                              child: ListTile(
                            title: Text("Relationship: biological father"),
                            subtitle: Text(""),
                          )),
                        ]),
                      ]),
                ),
                Card(
                  color: Colors.grey,
                  child: Column(children: const [
                    ListTile(
                        title: Text("History",
                            style: TextStyle(
                                color: Colors.white,
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
                            title: Text("Last TCA: 2021-02-03  "),
                            subtitle: Text(" Next TCA:2021-03-03",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          )),
                          Expanded(
                              child: ListTile(
                            title: Text("ART initiation date: 2021-01-03  "),
                            subtitle: Text("WHO stage:WHO stage 1",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          )),
                        ]),
                      ]),
                ),
                Card(
                  color: Colors.grey,
                  child: Column(children: const [
                    ListTile(
                        title: Text("Viral Load",
                            style: TextStyle(
                                color: Colors.white,
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
                              title: Text("VL Copies: 100copies  "),
                              subtitle: Text("Last VL Date:2021-03-03",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ]),
                      ]),
                ),
                Card(
                  color: Colors.grey,
                  child: Column(children: const [
                    ListTile(
                        title: Text("LTFU history",
                            style: TextStyle(
                                color: Colors.white,
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
                              title: Text("Patient has been an LTFU before."),
                            ),
                          ),
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
                          onPressed: () => {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SuggestionsBarrier()))
                          },
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
                          minWidth: 100.0,
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
                          minWidth: 100.0,
                          color: Theme.of(context).primaryColor,
                          textColor: Colors.white,
                          child: Row(children: const [
                            Icon(
                              Icons.people,
                              color: Colors.white,
                            ),
                            Text("Relationship"),
                          ]),
                          onPressed: () => {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const PatientRlshp()))
                          },
                          splashColor: Colors.redAccent,
                        ),
                        MaterialButton(
                          height: 40.0,
                          minWidth: 100.0,
                          color: Theme.of(context).primaryColor,
                          textColor: Colors.white,
                          child: Row(children: const [
                            Icon(
                              Icons.phone_android_rounded,
                              color: Colors.white,
                            ),
                            Text("Contact"),
                          ]),
                          onPressed: () => {launch("tel://+2547345678434")},
                          splashColor: Colors.redAccent,
                        )
                      ]))
            ]),
          ])),
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
