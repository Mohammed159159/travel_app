import 'package:flutter/material.dart';
import 'package:travel_app/Widgets/destinationsCursor.dart';
import 'package:travel_app/Widgets/hotelscursor.dart';
import 'package:travel_app/Widgets/iconbar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 20),
                child: Text('Where would you like to go?',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
              ),
              SizedBox(
                height: 20,
              ),
              IconsBar(),
              SizedBox(
                height: 20,
              ),
              DestinationsCurosor(),
              HotelsCursor(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentTab,
          onTap: (int currentIndex) {
            setState(() {
              currentTab = currentIndex;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.search), title: SizedBox.shrink()),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_pizza), title: SizedBox.shrink()),
            BottomNavigationBarItem(
            icon: CircleAvatar( radius: 15, backgroundImage: AssetImage('assets/man.jpg'),), title: SizedBox.shrink()
            )
          ],
        ));
  }
}
