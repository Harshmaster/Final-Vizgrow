import 'package:flutter/material.dart';
import 'package:vizgrow_consulting/forms/widgets/Dropdown.dart';
import 'package:vizgrow_consulting/forms/widgets/generalField.dart';


class NeedForm extends StatefulWidget {
  @override
  _NeedFormState createState() => _NeedFormState();
}

class _NeedFormState extends State<NeedForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(children: <Widget>[
          GeneralField(label: "job",hint: "enter job",),
          Dropdown(itemList: ["harsh","isbest"],hint: "Selectitem",),
        ],),
    );
  }
}
