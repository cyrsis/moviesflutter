import 'package:flutter/material.dart';
import 'package:movie_details_ui/Widget/Stateless/actor_scroller.dart';
import 'package:movie_details_ui/model/models.dart';
import 'package:movie_details_ui/Widget/Stateless/movie_detail_header.dart';
import 'package:movie_details_ui/Widget/Stateless/photo_scroller.dart';
import 'package:movie_details_ui/Widget/Stateless/story_line.dart';

class MovieDetailsPage extends StatelessWidget {
  MovieDetailsPage(this.movie);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new SingleChildScrollView(
        child: new Column(
          children: [
            new MovieDetailHeader(movie),
            new Padding(
              padding: const EdgeInsets.all(20.0),
              child: new Storyline(movie.storyline),
            ),
            new PhotoScroller(movie.photoUrls),
            new Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
                bottom: 50.0,
              ),
              child: new ActorScroller(movie.actors),
            ),
          ],
        ),
      ),
    );
  }
}
