import 'package:flutter/material.dart';
import 'package:accordion/accordion.dart';

class Locator extends StatefulWidget {
  const Locator({Key? key}) : super(key: key);

  @override
  _LocatorState createState() => _LocatorState();
}

class _LocatorState extends State<Locator> {
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
        title: const Text('Locator Information',
            style: TextStyle(color: Colors.white)),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(0.0),
        child: Column(
          children: [
            Accordion(
                maxOpenSections: 2,
                headerBackgroundColorOpened: Colors.black54,
                headerPadding:
                    const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
                children: [
                  AccordionSection(
                    isOpen: true,
                    leftIcon:
                        const Icon(Icons.insights_rounded, color: Colors.white),
                    headerBackgroundColor: Colors.black,
                    headerBackgroundColorOpened: Colors.red,
                    header: Text('Basic Information-KCH-0000-000',
                        style: _headerStyle),
                    content: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text('Name: John Doe', style: _contentStyle),
                          Text('NickName: Bazenga', style: _contentStyle),
                          Text('Clinic Site: Ahero', style: _contentStyle),
                          Text('Age: 20 yrs', style: _contentStyle),
                          Text('Parent Name: Mary Doe', style: _contentStyle),
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
                    header: Text('Contact detail', style: _headerStyle),
                    content: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text('Phone Number: 0734560000',
                              style: _contentStyle),
                          Text('Caregiver Phone: 0734560000',
                              style: _contentStyle),
                          Text('Whatspp Number: 0734560000',
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
                    header: Text('Location details', style: _headerStyle),
                    content: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text('Local Residence: Nyamasaria',
                              style: _contentStyle),
                          Text('Parent Residence: Nyamasaria',
                              style: _contentStyle),
                          Text('Rural Home: Ahero', style: _contentStyle),
                          Text('Parent Rural Home: Kisii',
                              style: _contentStyle),
                          Text('Key Identofoer: Boom supermarket',
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
                    header: Text('Location Description', style: _headerStyle),
                    content: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                              'From Town, board a vehicle /tuktuk/boda boda to Nyamasaria.Proceed with location description here',
                              style: _contentStyle),
                        ]),

                    contentHorizontalPadding: 20,
                    contentBorderWidth: 1,
                    // sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
                    // sectionClosingHapticFeedback: SectionHapticFeedback.vibrate,
                  ),
                ]),
          ],
        ),
      ),
    );
  }
}
