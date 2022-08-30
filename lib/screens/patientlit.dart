import 'package:flutter/material.dart';
import 'patient_view.dart';
import '/api/participant.dart';
import '/api/getparticipant.dart';
import '/models/participant.dart';
import 'patient_rlshp.dart';
import 'mockup_patientview.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  Participant participantlist = Participant();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text('Patients List', style: TextStyle(color: Colors.white)),
      ),
      body: Container(
          child: FutureBuilder<List>(
        future: participantlist.getAllParticipants(),
        builder: (context, snapshot) {
          print(snapshot.data);
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: (context, int i) {
                return Card(
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PatientView(
                                  participant_id: snapshot.data![i]),
                              settings: RouteSettings(
                                arguments: snapshot.data![i],
                              )));
                    },
                    title: Text(
                      snapshot.data![i]['study_id'],
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      snapshot.data![i]['participant_name'],
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                );
              },
            );
          } else {
            return Container(
              child: Column(children: [
                Card(
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MockupPatientView()));
                    },
                    title: const Text(
                      "KLM-0000-000",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text(
                      "John Doe",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ),
                Card(
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MockupPatientView()));
                    },
                    title: const Text(
                      "KCH-0000-001",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text(
                      "Mary Doe",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ),
              ]),
            );
          }
        },
      )),
    );
  }
}
