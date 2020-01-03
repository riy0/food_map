import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './add_place_screen.dart';
import '../providers/nice_places.dart';

class PlacesListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Places'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed(AddPlaceScreen.routeName);
            },
          ),
        ],
      ),
      body: Consumer<NicePlaces>(
        child: Center(
          child: Text('start adding places'),
        ),
        builder: (ctx, nicePlaces, ch) => nicePlaces.items.length <= 0
            ? ch
            : ListView.builder(
                itemCount: nicePlaces.items.length,
                itemBuilder: (ctx, i) => ListTile(
                  leading: CircleAvatar(
                    backgroundImage: FileImage(
                      nicePlaces.items[i].image,
                    ),
                  ),
                  title: Text(nicePlaces.items[i].title),
                  onTap: () {},
                ),
              ),
      ),
    );
  }
}
