import 'package:flutter/material.dart';

class PetProfile extends StatelessWidget {
  const PetProfile({super.key, required this.temporaryIndex});

  final String temporaryIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue,
        title: Text(
          "Profile $temporaryIndex",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
