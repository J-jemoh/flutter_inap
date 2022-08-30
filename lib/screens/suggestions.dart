import 'package:flutter/material.dart';
import 'package:grouped_checkbox/grouped_checkbox.dart';
import 'patient_view.dart';
import 'patientlit.dart';
import 'loginscreen.dart';

class SuggestionsBarrier extends StatefulWidget {
  const SuggestionsBarrier({Key? key}) : super(key: key);

  @override
  _SuggestionsBarrierState createState() => _SuggestionsBarrierState();
}

class _SuggestionsBarrierState extends State<SuggestionsBarrier> {
  TextEditingController _textController = TextEditingController();
  static List<String> allItemList = [
    'Drugs Delivery',
    'lternative TCA',
    'Longer Drug Supply',
    'Alternate visit hours',
    'Support disclosure at work',
  ];

  List<String> checkedItemList = ['Green', 'Yellow'];

  List<String> newDataList = List.from(allItemList);
  onItemChanged(String value) {
    setState(() {
      newDataList = allItemList
          .where((string) => string.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Barrier Suggestion',
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
              Card(
                color: Colors.orange,
                child: Column(children: const <Widget>[
                  ListTile(
                    title: Text(
                      "Patent: KCH-0000-001",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    subtitle:
                        Text("Date: 20/04/2022", textAlign: TextAlign.center),
                  ),
                ]),
              ),
              const Card(
                  child: ListTile(
                title: Text("Structural Barriers",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    )),
              )),
              GroupedCheckbox(
                  itemList: newDataList,
                  checkedItemList: checkedItemList,
                  onChanged: (itemList) {
                    setState(() {
                      checkedItemList = itemList;
                    });
                  },
                  orientation: CheckboxOrientation.VERTICAL,
                  checkColor: Colors.blue,
                  activeColor: Colors.red),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                MaterialButton(
                  height: 40.0,
                  minWidth: 150.0,
                  color: Theme.of(context).primaryColor,
                  textColor: Colors.white,
                  child: Row(children: const [
                    Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                    Text("Close"),
                  ]),
                  onPressed: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterScreen()))
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
                      Icons.save,
                      color: Colors.white,
                    ),
                    Text("Save & Exit"),
                  ]),
                  onPressed: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterScreen()))
                  },
                  splashColor: Colors.redAccent,
                )
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
