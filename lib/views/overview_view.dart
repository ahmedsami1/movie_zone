import 'package:flutter/material.dart';

import 'package:movie_zone/constants.dart';
import 'package:movie_zone/models/movie_model.dart';
import 'package:movie_zone/widgets/back_button.dart';

class OverviewView extends StatelessWidget {
  const OverviewView({super.key, required this.movie});
  final MovieModel movie;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar.large(
            backgroundColor: Colors.grey[900],
            leading: const bckbtn(),
            expandedHeight: 550,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                movie.title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              centerTitle: true,
              background: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
                child: Image.network(
                  filterQuality: FilterQuality.high,
                  '${Constants.imagePath}${movie.posterPath}',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 15),
                  const Text(
                    'Overview',
                    style: TextStyle(fontSize: 24,
                        color: Colors.white,
                        fontWeight:FontWeight.w400),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    movie.overview,
                    style: const TextStyle(fontSize: 19, color: Colors.grey),
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0, left: 8,bottom: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.grey[900],
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Colors.grey,
                                ),
                            ),
                            child: Row(
                              children: [
                                const Text(
                                  'Release Date',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const SizedBox(width: 10,),
                                Text(
                                    movie.releaseDate,
                                    style: const TextStyle(
                                      fontSize: 15,),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 10,),
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.grey[900],
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.grey,
                              ),
                            ),
                            child:  Row(
                              children: [
                                const Text(
                                  'Rating',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white,
                                  ),
                                ),
                                const Icon(Icons.star, color: Colors.amber,size: 16,),
                                const SizedBox(width: 10,),
                                Text(
                                  movie.voteAverage.toString(),
                                  style: const TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


