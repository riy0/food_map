import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './providers/nice_places.dart';
import './screens/places_list_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: GreatPlaces(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.lightBlue,
          accentColor: Colors.indigo,
        ),
        home: PlacesListScreen(),
      ),
    );
  }
}
