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

class PatientView extends StatefulWidget {
  final participant_id;
  // PatientView({required this.participant_id});
  // ignore: non_constant_identifier_names
  const PatientView({Key? key, required this.participant_id}) : super(key: key);
  @override
  _PatientViewState createState() => _PatientViewState(participant_id);
}

class _PatientViewState extends State<PatientView> {
  // ignore: non_constant_identifier_names
  final participant_id;

  _PatientViewState(this.participant_id);
  // Getparticipantid participant_id;
  // _PatientViewState(this.participant_id);
  // ignore: non_constant_identifier_names
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Participant ${participant_id['study_id']}',
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
                  child: Column(children: <Widget>[
                    ListTile(
                      title: Text(
                        "STUDY ID: ${participant_id['study_id']} ",
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
                        children: <Widget>[
                      Expanded(
                        child: ListTile(
                          title: Text("Gender: ${participant_id['gender']}",
                              style: TextStyle(color: Colors.cyan)),
                          subtitle: Text(
                              'Nickname: ${participant_id['participant_nickname']}',
                              style: TextStyle(color: Colors.cyan)),
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          title: Text("Age: ${participant_id['age']}",
                              style: TextStyle(color: Colors.cyan)),
                          subtitle: Text(
                              'Residence: ${participant_id['location']}',
                              style: TextStyle(color: Colors.cyan)),
                        ),
                      ),
                    ])),
                Card(
                  child: Column(children: const [
                    ListTile(
                        title: Text("Caregiver details",
                            style: TextStyle(
                                color: Colors.cyan,
                                fontWeight: FontWeight.bold)))
                  ]),
                ),
                Card(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(children: [
                          Expanded(
                              child: ListTile(
                            title: Text(
                                "Name: ${participant_id['caregiver_name']}"),
                            subtitle: Text(
                                "Phone: ${participant_id['caregiver_contact_phone']}",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          )),
                          Expanded(
                              child: ListTile(
                            title: Text(
                                "Relationship: ${participant_id['relationship_with_participant']}"),
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
                              Icons.person,
                              color: Colors.white,
                            ),
                            Text("Patient rlshp"),
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
                          onPressed: () => {},
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
