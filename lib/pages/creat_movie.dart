import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posttest7_1915016099_salassepkardianto/controller/crud_movie_controller.dart';
import 'package:posttest7_1915016099_salassepkardianto/controller/movie_form_controller.dart';
import 'package:posttest7_1915016099_salassepkardianto/pages/main_page.dart';

class CreateMovie extends StatelessWidget {

  final TextController textControllerFinder = Get.find();

  @override
  Widget build(BuildContext context) {
    final MovieTextController movieTextController = Get.put(MovieTextController());
    final MovieRadioController movieRadioController = Get.put(MovieRadioController());
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Add Movie",
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Oxygen',
            ),
          ),
        backgroundColor: Color.fromARGB(255, 10, 10, 10),
        ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 10, 10, 10),
          ),
          padding: EdgeInsets.fromLTRB(20, 5, 20, 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Text(
                  "Add new movie !",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Title : ",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Oxygen",
                    fontSize: 16
                  )
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  controller: movieTextController.titleController,
                  style: TextStyle(
                    fontFamily: "Oxygen",
                    color: Colors.white,
                    height: 1.0
                  ),
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    hintText: "e.g. Stranger Things",
                    hintStyle: TextStyle(
                      fontFamily: "Oxygen",
                      color: Colors.grey,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Duration : ",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Oxygen",
                    fontSize: 16
                  )
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  controller: movieTextController.durationController,
                  style: TextStyle(
                    fontFamily: "Oxygen",
                    color: Colors.white,
                    height: 1.0
                  ),
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    hintText: "e.g. 1 j 30 m",
                    hintStyle: TextStyle(
                      fontFamily: "Oxygen",
                      color: Colors.grey,
                    ),
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
                    fontSize: 16
                  )
                ),
                SizedBox(
                  height: 5,
                ),
                ListTile(
                  textColor: Colors.white,
                  title: Text(
                    "Horror",
                    style: TextStyle(
                      fontFamily: "Oxygen",
                    ),
                  ),
                  leading: Obx(
                    () => Radio<GenreInput>(
                      fillColor: MaterialStateProperty.all(Colors.white),
                      value: GenreInput.horror,
                      groupValue: movieRadioController.genreInput.value,
                      onChanged: (value) {
                        movieRadioController.genreInput(value);
                      }
                    )
                  ),
                ),
              ListTile(
                textColor: Colors.white,
                title: Text(
                    "Action",
                    style: TextStyle(
                      fontFamily: "Oxygen",
                    ),
                  ),
                  leading: Obx(
                    () => Radio<GenreInput>(
                      fillColor: MaterialStateProperty.all(Colors.white),
                      value: GenreInput.action,
                      groupValue: movieRadioController.genreInput.value,
                      onChanged: (value) {
                        movieRadioController.genreInput(value);
                      }
                    )
                  ),
                ),
              ListTile(
                textColor: Colors.white,
                  title: Text(
                    "Comedy",
                    style: TextStyle(
                      fontFamily: "Oxygen",
                    ),
                  ),
                  leading: Obx(
                    () => Radio<GenreInput>(
                      fillColor: MaterialStateProperty.all(Colors.white),
                      value: GenreInput.comedy,
                      groupValue: movieRadioController.genreInput.value,
                      onChanged: (value) {
                        movieRadioController.genreInput(value);
                      }
                    )
                  ),
                ),
                ListTile(
                  textColor: Colors.white,
                  title: Text(
                    "Romance",
                    style: TextStyle(
                      fontFamily: "Oxygen",
                    ),
                  ),
                  leading: Obx(
                    () => Radio<GenreInput>(
                      fillColor: MaterialStateProperty.all(Colors.white),
                      value: GenreInput.romance,
                      groupValue: movieRadioController.genreInput.value,
                      onChanged: (value) {
                        movieRadioController.genreInput(value);
                      }
                    )
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Scenario : ",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Oxygen",
                    fontSize: 16
                  )
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  controller: movieTextController.scenarioController,
                  keyboardType: TextInputType.multiline,
                  minLines: 3,
                  maxLines: null,
                  style: TextStyle(
                    fontFamily: "Oxygen",
                    color: Colors.white,
                    height: 1.0,
                    letterSpacing: 1.5
                    
                  ),
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    hintText: "e.g. Film ini sangat seram",
                    hintStyle: TextStyle(
                      fontFamily: "Oxygen",
                      color: Colors.grey,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
      child: Icon(
        Icons.add,
        size: 25,
      ),
      backgroundColor: Colors.red,
      splashColor: Colors.white,
      onPressed: () {
        movieRadioController.GetGenre();
        movieTextController.onPressed(movieRadioController.genreName.value, textControllerFinder.firstName.value);
        Get.to(MainPage());
      }
      )
    );
  }
} 