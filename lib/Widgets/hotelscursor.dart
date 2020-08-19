import'package:flutter/material.dart';
import 'package:travel_app/modules/hotels.dart';

class HotelsCursor extends StatefulWidget {
  @override
  _HotelsCursorState createState() => _HotelsCursorState();
}

class _HotelsCursorState extends State<HotelsCursor> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Exclusive Hotels',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 21,
                    letterSpacing: 1.25),
              ),
              GestureDetector(
                onTap: () => print("SEE ALL"),
                child: Text(
                  'See All',
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.0),
                ),
              )
            ],
          ),
        ),
        Container(
            height: 300,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: hotels.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 240,
                    margin: EdgeInsets.all(10),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Positioned(
                          bottom: 0,
                          child: Container(
                            height: 150,
                            width: 240,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10.0, top: 60),
                              child: Column(
                                children: [
                                  Text(
                                    "${hotels[index].name}",
                                    style: TextStyle(
                                      letterSpacing: 1.2,
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    hotels[index].address,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(height: 2.0,),
                                  Text("\$${hotels[index].price}/ Night",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w500
                                  ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 6, offset: Offset(0, 2))
                              ]),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image(
                              image: AssetImage(hotels[index].image),
                              height: 180,
                              width: 220,
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                }))
      ],
    );
  }
}
