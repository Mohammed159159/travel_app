import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconsBar extends StatefulWidget {
  @override
  _IconsBarState createState() => _IconsBarState();
}

class _IconsBarState extends State<IconsBar> {
  int _currentIndex = 0;
  List<IconData> _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.walking,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.biking
  ];

  Widget _buildIcons(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: _currentIndex == index
                  ? Theme.of(context).accentColor
                  : Color(0xFFE7EBEE)),
          child: Icon(_icons[index],
              size: 28,
              color: _currentIndex == index
                  ? Theme.of(context).primaryColor
                  : Color(0XFFB4C1C4))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [for (int i = 0; i < _icons.length; i++) _buildIcons(i)],
    );
  }
}
