import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/modules/destinations.dart';

class DestinationScreen extends StatefulWidget {
  final Destination destiNation;

  DestinationScreen(this.destiNation);

  @override
  _DestinationScreenState createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> {
  _buildStarsRating() {
    final star = Icon(
      Icons.star,
      color: Colors.orangeAccent,
    );
    return star;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        blurRadius: 6.0,
                        offset: Offset(0.0, 2.0))
                  ]),
              child: Hero(
                tag: widget.destiNation.image,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  child: Image(
                    image: AssetImage(widget.destiNation.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.destiNation.city,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2),
                  ),
                  Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.locationArrow,
                        size: 12,
                        color: Colors.white70,
                      ),
                      SizedBox(
                        width: 4.0,
                      ),
                      Text(
                        widget.destiNation.country,
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.0),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Positioned(
                bottom: 20.0,
                right: 20.0,
                child: Icon(
                  Icons.location_on,
                  color: Colors.white70,
                  size: 25.0,
                )),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () => Navigator.pop(context),
                    color: Colors.black,
                    iconSize: 30,
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.search),
                        iconSize: 30,
                        onPressed: () {},
                        color: Colors.black,
                      ),
                      IconButton(
                        icon: Icon(Icons.filter_list),
                        iconSize: 30,
                        onPressed: () {},
                        color: Colors.black,
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        Expanded(
            child: Container(
                child: ListView.builder(
                  padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                    itemCount: widget.destiNation.activities.length,
                    itemBuilder: (context, index) {
                      return Stack(
                        children: [
                          Container(
                              margin: EdgeInsets.fromLTRB(40, 5, 20, 5),
                              height: 170,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    100.0, 20, 20, 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 120.0,
                                          child: Text(
                                            widget.destiNation.activities[index].name,
                                            style: TextStyle(
                                              fontSize: 22.0,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                            ),
                                            textAlign: TextAlign.justify,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              '\$${widget.destiNation.activities[index].price}',
                                              style: TextStyle(
                                                  fontSize: 22.0,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            Text(
                                              'per pax',
                                              style: TextStyle(
                                                  color: Colors.grey[400],
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Text(
                                      widget.destiNation.activities[index].type,
                                      style: TextStyle(
                                        color: Colors.grey[400],
                                        fontSize: 15,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        for (int i = 0;
                                            i < widget.destiNation.activities[index].rating;
                                            i++)
                                          _buildStarsRating()
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 30,
                                          width: 75,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color:
                                                Theme.of(context).accentColor,
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                              widget.destiNation.activities[index].startTimes[0]),
                                        ),
                                        SizedBox(width: 5.0),
                                        Container(
                                          height: 30,
                                          width: 75,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Theme.of(context)
                                                  .accentColor),
                                          alignment: Alignment.center,
                                          child: Text(
                                              widget.destiNation.activities[index].startTimes[1]),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )),
                          Positioned(
                              left: 20,
                              top: 15.0,
                              bottom: 20.0,
                              child: Container(
                                  width: 110,
                                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black26,
                                        blurRadius: 6.0,
                                        offset: Offset(0.0, 2.0),
                                      )
                                    ]
                      ),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.asset(widget.destiNation.activities[index].image, fit: BoxFit.cover))))
                        ],
                      );
                    })))
      ],
    ));
  }
}
