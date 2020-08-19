import 'activities.dart';

class Destination{
  String image;
  String city;
  String country;
  String description;
  List<Activities> activities;
  Destination(
    this.image,
    this.city,
    this.country,
    this.description,
    this.activities

);
  
}

List <Activities> Istambul = [
  Activities('assets/cinema.jpg','Atlas Sinemasi Cinema','Mall activity',['5:00 AM','12:00 PM'],4,25),
  Activities('assets/mosque.jpg','Blue Mosque tour','Sight touring',['4:00 AM','6:00 PM'],5,45),
  Activities('assets/topkapi.jpg','Topkapi Palace Museum tour','Sight touring',['3:00 AM','7:00 PM'],3,20),

];

List <Activities> Egypt = [
  Activities('assets/camels.jpg','Camels riding','Sight touring',['7:00 AM','9:00 PM'],4,25),
  Activities('assets/templeparty.jpg','Temple Restaurant party','Party',['12:00 PM','3:00 AM'],5,38),
  Activities('assets/balloon.jpg','VIP hot air balloon Tour','Sight touring',['10:00 AM','5:00 PM'],4,43)
];

List <Activities> London = [
  Activities('assets/sightseeing.jpg','Sight Seeing tour','Sight touring',['1:00 AM','5:00 PM'],5,36),
  Activities('assets/meuseum.jpg','British Museum tour','Museum tour',['11:00 AM','9:00 PM'],5,47),
  Activities('assets/londoneye.jpg','London Eye tour','Observation wheel tour',['12:00 AM','12:00 PM'],5,31),

];

List <Activities> Madrid = [
  Activities('assets/royalpalace.jpg','Royal Palace tour','Sight touring',['1:00 AM','5:00 PM'],5,50),
  Activities('assets/flamengo.jpg','Flamingo Show','Show',['4:00 PM','6:00 PM'],3,20),
  Activities('assets/majestic.jpg','Majestic Madrid Walking tour','Sight touring',['1:00 PM','12:00 PM'],4,30),

];

List <Activities> Paris = [
  Activities('assets/rex.jpg','Rex Studios tour','Sight touring',['9:00 AM','5:00 PM'],5,50),
  Activities('assets/louvre.jpg','Louvre Museum tour','Sight touring',['4:00 AM','5:00 PM'],5,60),
  Activities('assets/versailles.jpg','Versailles Palace tour','Sight touring',['3:00 AM','7:00 PM'],5,55),

];

List<Destination>destinations = [
  Destination('assets/giza.jpg','Giza','Egypt','A city for ancient egypt',Egypt),
  Destination('assets/istambul.jpg','Istambul','Turkey','An eye catching city',Istambul),
  Destination('assets/london.jpg','London','England','An elegant city for sight touring',London),
  Destination('assets/madrid.jpg','Madrid','Spain','A famous city for movies',Madrid),
  Destination('assets/paris.jpg','Paris','France','A city for love',Paris),
];