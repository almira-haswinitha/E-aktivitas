import 'package:flutter/material.dart';
import './hal_status.dart' as status;
import './hal_tambah.dart' as tambah;

void main() {
  runApp(new MaterialApp(
    title: "Tab Bar",
    home: new Aktivitas(),
  ));
}

class Aktivitas extends StatefulWidget {
  @override
  _AktivitasState createState() => _AktivitasState();
}

class _AktivitasState extends State<Aktivitas>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    controller = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new status.Status(),
          new tambah.Tambah(),
        ],
      ),
      appBar: new AppBar(
        title: new Text("E-Aktivitas"),
        backgroundColor: Colors.amber,
      ),
      bottomNavigationBar: new Material(
        color: Colors.amber,
        child: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(
              text: "Status",
            ),
            new Tab(
              text: "Tambah",
            )
          ],
        ),
      ),
    );
  }
}
