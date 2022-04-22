import 'package:flutter/material.dart';
import 'package:grouped_checkbox/grouped_checkbox.dart';
import 'suggestions.dart';

class AddBarrier extends StatefulWidget {
  const AddBarrier({Key? key}) : super(key: key);

  @override
  _AddBarrierState createState() => _AddBarrierState();
}

class _AddBarrierState extends State<AddBarrier> {
  TextEditingController _textController = TextEditingController();
  static List<String> allItemList = [
    'Transportation costs',
    'Work Interferance',
    'FinancialConstraints',
    'Prison',
    'No food',
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
          title:
              const Text('Add Barriers', style: TextStyle(color: Colors.white)),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(children: [
              Row(children: [
                Expanded(
                    child: TextField(
                  controller: _textController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Search your barrier here....',
                  ),
                  onChanged: onItemChanged,
                )),
              ]),
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
              TextButton(
                onPressed: () {
                  setState(() {
                    if (_textController.text.length > 0) {
                      allItemList.add(_textController.text);
                      _textController.clear();
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text(
                            "You have not searched for any barrier among the list.Search incase its missing click add barrier"),
                      ));
                    }
                  });
                },
                child: const Text("add barrier"),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
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
                    Text("Save and Continue"),
                  ]),
                  onPressed: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SuggestionsBarrier()))
                  },
                  splashColor: Colors.redAccent,
                )
              ]),
            ]),
          ),
        ));
  }
}
