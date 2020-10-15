import 'package:flutter/material.dart';

class Tambah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(10.0),
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Padding(
              padding: new EdgeInsets.all(10.0),
            ),
            new TextField(
              decoration: new InputDecoration(
                  hintText: "Tambah Pekerjaan",
                  labelText: "Tambah Pekerjaan",
                  border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(20.0))),
            ),
            new Padding(
              padding: new EdgeInsets.only(top: 15.0),
            ),
            new TextField(
              decoration: new InputDecoration(
                hintText: "Tambah Pekerjaan",
                labelText: "Tambah Pekerjaan",
                border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(20.0)),
              ),
            ),
            new RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 14.0),
                child: new Text(
                  'Date Picker Dialog',
                  style: new TextStyle(color: Colors.white),
                ),
                color: Colors.green,
                onPressed: () {
                  showDatePicker(
                    context: context,
                    initialDate: new DateTime.now(),
                    firstDate: new DateTime(1970),
                    lastDate: new DateTime(2500),
                  ).then((DateTime value) {
                    if (value != null) {
                      Scaffold.of(context).showSnackBar(
                          new SnackBar(content: new Text('${value}')));
                    }
                  });
                })
          ],
        ),
      ),
    );
  }
}
