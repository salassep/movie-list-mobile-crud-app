import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:posttest7_1915016099_salassepkardianto/model/movie_model.dart';

int findMovie(title) {
  final index = moviesList.indexWhere((element) => element.title == title);
  return index;
}

class DetailScreen extends StatelessWidget {

  String movieTitle;
  DetailScreen({required this.movieTitle});

  @override
  Widget build(BuildContext context) {
    Movies movie = moviesList[findMovie(movieTitle)];
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Movie Detail",
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Oxygen',
            ),
          ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        ),
      extendBodyBehindAppBar: true,
      body: Container (
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 10, 10, 10),
          ),
          child : Padding (
            padding: EdgeInsets.fromLTRB(20, 80, 50, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Judul : ",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Oxygen",
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.1,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  movie.title,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Oxygen",
                    fontSize: 15,
                    letterSpacing: 1.1,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Durasi : ",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Oxygen",
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.1,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  movie.duration,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Oxygen",
                    fontSize: 15,
                    letterSpacing: 1.1,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Genre : ",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Oxygen",
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.1,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  movie.genre,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Oxygen",
                    fontSize: 15,
                    letterSpacing: 1.1,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Skenario : ",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Oxygen",
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.1,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  movie.scenario,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Oxygen",
                    fontSize: 15,
                    letterSpacing: 1.1,
                  ),
                ),
              ],
            ),
          ),
      ),
    );
  }
}