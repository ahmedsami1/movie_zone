import 'package:flutter/material.dart';

import 'package:movie_zone/constants.dart';
import 'package:movie_zone/views/overview_view.dart';

class UpcomingListView extends StatelessWidget {
  const UpcomingListView({
    super.key, required this.snapshot,
  });
  final AsyncSnapshot snapshot;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return  Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) =>  OverviewView(movie: snapshot.data[index],),));
              },
              child: Container(
                width: 160,
                height: 220,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Image.network(
                  filterQuality: FilterQuality.high,
                  '${Constants.imagePath}${snapshot.data[index].posterPath}',
                  fit: BoxFit.cover,
                ) ,
              ),
            ),
          );
        },

        itemCount: 10,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}