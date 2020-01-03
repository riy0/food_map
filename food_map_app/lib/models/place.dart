import 'dart:io';
import 'package:flutter/foundation.dart';

class Place{
  final String id;
  final String title;
  final ... location;
  final File image; 

  Place ({
    @required this.id,
    @required this.title,
    @required this.location,
    @required this.image,
  });
}

class PlaceLocation {
  final double latitude;
  final double longititude;
  final String address;

  PlaceLocation({
    @required this.latitude,
    @required this.longititude,
    this.address,
  });
}
