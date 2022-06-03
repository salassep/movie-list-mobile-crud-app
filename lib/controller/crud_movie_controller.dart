import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posttest7_1915016099_salassepkardianto/pages/main_page.dart';

FirebaseFirestore firestore = FirebaseFirestore.instance;
CollectionReference movies = firestore.collection("movies");

class MovieTextController extends GetxController {
  final titleController = TextEditingController();
  final durationController = TextEditingController();
  final scenarioController = TextEditingController();

  onPressed(genre, firstname) {
    movies.add({
      'title': titleController.text,
      'duration': durationController.text,
      'scenario': scenarioController.text,
      'genre': genre,
      'created': firstname,
      'updated': firstname,
    });
    titleController.text ='';
    durationController.text = '';
    scenarioController.text = '';
  }

  onUpdate(movieId ,genre, newFirstname) {
    movies.doc(movieId).update({
      'title': titleController.text,
      'duration': durationController.text,
      'scenario': scenarioController.text,
      'genre': genre,
      'updated': newFirstname,
    });
    titleController.text ='';
    durationController.text = '';
    scenarioController.text = '';
  }

  @override
  void onClose() {
    titleController.dispose();
    durationController.dispose();
    scenarioController.dispose();
    super.onClose();
  }
}

enum GenreInput {horror, comedy, action, romance}

class MovieRadioController extends GetxController {
  var genreInput = GenreInput.horror.obs;
  var genreName = "".obs;

  void GetGenre() {
    if(genreInput == GenreInput.horror) {
      genreName = "Horror".obs;
    } else if(genreInput == GenreInput.action) {
      genreName = "Action".obs;
    } else if(genreInput == GenreInput.comedy) {
      genreName = "Comedy".obs;
    } else {
      genreName = "Romance".obs;
    } 
  }

  onChanged (value) {
    genreInput(value);
  }
}