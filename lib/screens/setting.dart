import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 67, 7, 156),
        centerTitle: true,
        title: Text('Cycling'),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border:
                  Border.all(color: Color.fromARGB(255, 67, 7, 156), width: 5)),
          child: Icon(
            Icons.settings,
            size: 150,
          ),
          width: 250,
          height: 250,
        ),
      ),
    );
  }
}
