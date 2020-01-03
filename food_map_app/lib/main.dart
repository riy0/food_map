import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './providers/nice_places.dart';
import './screens/places_list_screen.dart';
import './screens/add_place_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: NicePlaces(),
      child: MaterialApp(
          title: 'Food Map',
          theme: ThemeData(
            primarySwatch: Colors.lightBlue,
            accentColor: Colors.amber,
          ),
          home: PlacesListScreen(),
          routes: {
            AddPlaceScreen.routeName: (ctx) => AddPlaceScreen(),
          }),
    );
  }
}
