import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posttest7_1915016099_salassepkardianto/controller/crud_movie_controller.dart';
import 'package:posttest7_1915016099_salassepkardianto/pages/creat_movie.dart';
import 'package:posttest7_1915016099_salassepkardianto/pages/main_page.dart';
import 'package:posttest7_1915016099_salassepkardianto/pages/movie_form.dart';
import 'package:posttest7_1915016099_salassepkardianto/pages/movie_result.dart';
import 'package:posttest7_1915016099_salassepkardianto/pages/profile_page.dart';
import 'package:posttest7_1915016099_salassepkardianto/pages/update_movie.dart';


class DetailScreenFirebase extends StatelessWidget {

  final String movieId, title, duration, genre, inserted, updated, sinopsis;
  DetailScreenFirebase(
      this.movieId, 
      this.title,
      this.duration,
      this.genre,
      this.inserted,
      this.updated,
      this.sinopsis,
  );

  @override
  Widget build(BuildContext context) {
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
                      title,
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
                      duration,
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
                      genre,
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
                      "Dimasukkan oleh : ",
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
                      inserted,
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
                      "Diperbarui oleh :",
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
                      updated,
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
                      "Sinopsis : ",
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
                      sinopsis,
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
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: Icon(
              Icons.edit,
            ),
            backgroundColor: Colors.red,
            onPressed: () => Get.to(UpdateMovie(movieId)),
            heroTag: null,
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            child: Icon(
              Icons.delete
            ),
            backgroundColor: Colors.red,
            onPressed: () {
              movies.doc(movieId).delete();
              Get.back();
            },
            heroTag: null,
          ),
        ],
      ),
    );
  }
}