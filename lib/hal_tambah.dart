import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = 'Date Picker';
  TimeOfDay _time;

  @override
  void initState() {
    super.initState();
    _time = TimeOfDay.now();
  }

  DateTime _date = DateTime.now();

  Future<Null> _selectDate(BuildContext context) async {
    DateTime _datePicker = await showDatePicker(
        context: context,
        initialDate: _date, // current date
        firstDate: DateTime(1947), //first date
        lastDate: DateTime(2030), // last date
        textDirection:
            TextDirection.ltr, // header text or button direction ltr or rtl
        initialDatePickerMode: DatePickerMode.day, // day or year mode

        // button color change and picked color changed
        builder: (BuildContext context, Widget child) {
          return Theme(
            data: ThemeData(
              primaryColor: Color(0xFFC41A3B),
              accentColor: Color(0xFFC41A3B),
            ),
            child: child,
          );
        });

    if (_datePicker != null && _datePicker != _date) {
      setState(() {
        _date = _datePicker;
        print(
          _date.toString(),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: new Column(
              children: <Widget>[
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
                new TextFormField(
                  cursorColor: Color(0xFFC41A3B),
                  readOnly: true,
                  onTap: () {
                    setState(() {
                      _selectDate(context);
                    });
                  },
                  decoration: InputDecoration(
                    labelText: 'Tanggal mulai',
                    labelStyle: TextStyle(fontSize: 16.0),
                    hintText: (_date.toString()),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFFC41A3B), width: 2.0),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 15.0),
                ),
                new TextFormField(
                  cursorColor: Color(0xFFC41A3B),
                  readOnly: true,
                  onTap: () {
                    setState(() {
                      _selectDate(context);
                    });
                  },
                  decoration: InputDecoration(
                    labelText: 'Tanggal selesai',
                    labelStyle: TextStyle(fontSize: 16.0),
                    hintText: (_date.toString()),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFFC41A3B), width: 2.0),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 15.0),
                ),
                new TextFormField(
                  cursorColor: Color(0xFFC41A3B),
                  readOnly: true,
                  onTap: () {
                    new ListTile(
                      title: Text('Time : ${_time.hour}:${_time.minute}'),
                      trailing: Icon(Icons.timer),
                      onTap: _pickTime,
                    );
                  },
                  decoration: InputDecoration(
                    labelText: 'Jam mulai',
                    labelStyle: TextStyle(fontSize: 16.0),
                    hintText: (_date.toString()),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFFC41A3B), width: 2.0),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 15.0),
                ),
                new TextFormField(
                  cursorColor: Color(0xFFC41A3B),
                  readOnly: true,
                  onTap: () {
                    new ListTile(
                      title: Text('Time : ${_time.hour}:${_time.minute}'),
                      trailing: Icon(Icons.timer),
                      onTap: _pickTime,
                    );
                  },
                  decoration: InputDecoration(
                    labelText: 'Jam selesai',
                    labelStyle: TextStyle(fontSize: 16.0),
                    hintText: (_date.toString()),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFFC41A3B), width: 2.0),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ],
            )),

        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: <Widget>[
        //     RaisedButton(
        //       onPressed: () {
        //         setState(() {
        //           _selectDate(context);
        //         });
        //       },
        //       color: Color(0xFFC41A3B),
        //       child: Text(
        //         'Data Picker',
        //         style: TextStyle(color: Colors.white),
        //       ),
        //     ),
        //     Text(_date.toString()),
        //   ],
        // ),
      ),
    );
  }

  _pickTime() async {
    TimeOfDay time = await showTimePicker(
        context: context,
        initialTime: _time,
        builder: (BuildContext context, Widget child) {
          return Theme(
            data: ThemeData(
              primaryColor: Color(0xFFC41A3B),
              accentColor: Color(0xFFC41A3B),
            ),
            child: child,
          );
        });

    if (time != null)
      setState(() {
        _time = time;
      });
  }
}
