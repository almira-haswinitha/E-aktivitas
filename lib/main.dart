import 'package:flutter/material.dart';
import './hal_status.dart' as status;
import './hal_profil.dart' as profil;

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
          new status.TestAnim2Widget(),
          new profil.Profile1Widget(),
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
              text: "Home",
            ),
            new Tab(
              text: "Profile",
            )
          ],
        ),
      ),
    );
  }
}
