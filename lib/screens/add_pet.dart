import 'package:flutter/material.dart';

class AddPet extends StatelessWidget {
  const AddPet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue,
        title: Text("Add Pet", style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
