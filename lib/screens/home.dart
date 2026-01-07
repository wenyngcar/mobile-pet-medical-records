import 'package:flutter/material.dart';
import '../screens/pet_profile.dart';
import '../screens/add_pet.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          widget.title,
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                DefaultTextStyle(
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  child: Column(
                    children: [
                      Text("Welcome to your"),
                      Text("Pet Medical Records."),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: GridView.count(
              padding: EdgeInsets.all(20),
              crossAxisCount: 3,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
              children: [
                InkWell(
                  onTap: () {
                    print("Button is pressed.");
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(builder: (context) => AddPet()),
                    );
                  },
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.add, size: 50)],
                    ),
                  ),
                ),
                for (int i = 0; i < 5; i++) BoxCard(number: i.toString()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BoxCard extends StatefulWidget {
  const BoxCard({super.key, required this.number});

  final String number;

  @override
  State<BoxCard> createState() => _BoxCardState();
}

class _BoxCardState extends State<BoxCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("Button is pressed.");
        Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: (context) => PetProfile(temporaryIndex: widget.number),
          ),
        );
      },
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Icon(Icons.person, size: 50), Text(widget.number)],
        ),
      ),
    );
  }
}
