import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    print('Inside the build');
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.black54,
        title: Text("Choose a location"),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Choose location : $count'),
              SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          count--;
                        });
                      },
                      child: Icon(Icons.water)),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          count++;
                        });
                      },
                      child: Icon(Icons.local_fire_department))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
