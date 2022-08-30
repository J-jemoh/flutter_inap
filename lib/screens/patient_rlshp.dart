import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:accordion/accordion.dart';

class PatientRlshp extends StatefulWidget {
  const PatientRlshp({Key? key}) : super(key: key);

  @override
  _PatientRlshpState createState() => _PatientRlshpState();
}

class _PatientRlshpState extends State<PatientRlshp> {
  final _headerStyle = const TextStyle(
      color: Color(0xffffffff), fontSize: 15, fontWeight: FontWeight.bold);
  final _contentStyleHeader = const TextStyle(
      color: Color(0xff999999), fontSize: 14, fontWeight: FontWeight.w700);
  final _contentStyle = const TextStyle(
      color: Color(0xff999999), fontSize: 14, fontWeight: FontWeight.normal);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Relationship Building',
            style: TextStyle(color: Colors.white)),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(0.0),
        child: Column(
          children: [
            Accordion(
                maxOpenSections: 2,
                headerBackgroundColorOpened: Color.fromARGB(137, 162, 100, 19),
                headerPadding:
                    const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
                children: [
                  AccordionSection(
                    isOpen: true,
                    leftIcon:
                        const Icon(Icons.insights_rounded, color: Colors.white),
                    headerBackgroundColor: Colors.black,
                    headerBackgroundColorOpened: Colors.red,
                    header: Text('Initial Contact ', style: _headerStyle),
                    content: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const Text("Introduce yourself",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('•	Ask general things in life',
                              style: _contentStyle),
                          Text(
                              '•	Avoid going straight to the purpose of the call',
                              style: _contentStyle),
                          Text(
                              '•	If initial contact is by phone call, try as much as possible to get an appointment for physical meeting to start establishing relationship',
                              style: _contentStyle),
                        ]),

                    contentHorizontalPadding: 20,
                    contentBorderWidth: 1,
                    // sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
                    // sectionClosingHapticFeedback: SectionHapticFeedback.vibrate,
                  ),
                  AccordionSection(
                    isOpen: true,
                    leftIcon:
                        const Icon(Icons.insights_rounded, color: Colors.white),
                    headerBackgroundColor: Colors.black,
                    headerBackgroundColorOpened: Colors.red,
                    header:
                        Text('Establishing Relationship', style: _headerStyle),
                    content: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const Text("Look for conversion starter",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(
                              '•	Identify current affairs e.g. curfew, Covid, Tax etc.',
                              style: _contentStyle),
                          Text(
                              '•	Join in activity the patient is doing at the time',
                              style: _contentStyle),
                          Text('•	Aim to “Disarm” the patient',
                              style: _contentStyle),
                          Text('•	Assure confidentiality',
                              style: _contentStyle),
                          const Text('Purpose of starting the relationship',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(
                              '•	Bring out the purpose of starting the relationship',
                              style: _contentStyle),
                        ]),

                    contentHorizontalPadding: 20,
                    contentBorderWidth: 1,
                    // sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
                    // sectionClosingHapticFeedback: SectionHapticFeedback.vibrate,
                  ),
                  AccordionSection(
                    isOpen: true,
                    leftIcon:
                        const Icon(Icons.insights_rounded, color: Colors.white),
                    headerBackgroundColor: Colors.black,
                    headerBackgroundColorOpened: Colors.red,
                    header:
                        Text('Sustaining Relationship', style: _headerStyle),
                    content: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const Text('Getting Information with ease',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(
                              '•	Get as much information as possible from the patient with least resistance',
                              style: _contentStyle),
                          Text(
                              '•	If there is resistance roll with the patient ',
                              style: _contentStyle),
                          const Text('Be available and accessible',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(
                              '•	Ensure you are available to the patient whenever they need you.',
                              style: _contentStyle),
                          const Text('Open Communication',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('•	Listen more (Listen to understand)',
                              style: _contentStyle),
                          Text('•	Observe the non verbals',
                              style: _contentStyle),
                          const Text('Support system',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(
                              '•	Be available for the formal or informal support e.g. drug picking, act as treatment buddy, clinic navigation',
                              style: _contentStyle),
                          Text(
                              '•	Know when to give what intervention [Referal, Transport, Food security, Opportunities that would be of benefit]',
                              style: _contentStyle),
                        ]),

                    contentHorizontalPadding: 20,
                    contentBorderWidth: 1,
                    // sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
                    // sectionClosingHapticFeedback: SectionHapticFeedback.vibrate,
                  ),
                  AccordionSection(
                    isOpen: true,
                    leftIcon:
                        const Icon(Icons.insights_rounded, color: Colors.white),
                    headerBackgroundColor: Colors.black,
                    headerBackgroundColorOpened: Colors.red,
                    header: Text('Transition', style: _headerStyle),
                    content: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text('Know at what point to transit the patient.',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(
                              'What would be of benefit to the patient and at what point.',
                              style: _contentStyle),
                        ]),

                    contentHorizontalPadding: 20,
                    contentBorderWidth: 1,
                    // sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
                    // sectionClosingHapticFeedback: SectionHapticFeedback.vibrate,
                  ),
                  AccordionSection(
                    isOpen: true,
                    leftIcon:
                        const Icon(Icons.insights_rounded, color: Colors.white),
                    headerBackgroundColor: Colors.black,
                    headerBackgroundColorOpened: Colors.red,
                    header:
                        Text('Comments/Additional Notes', style: _headerStyle),
                    content: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: const [
                          Text(
                              'Wwrite your additional notes/comments/suggestions.',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          TextField(
                            keyboardType: TextInputType.multiline,
                            textInputAction: TextInputAction.newline,
                            minLines: 1,
                            maxLines: 7,
                          ),
                          const SizedBox(height: 30),
                        ]),

                    contentHorizontalPadding: 20,
                    contentBorderWidth: 1,
                    // sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
                    // sectionClosingHapticFeedback: SectionHapticFeedback.vibrate,
                  ),
                ]),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text(
                        'You have updated patient relationship successfully')));
              },
              child: const Text('Save Comment',
                  style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
