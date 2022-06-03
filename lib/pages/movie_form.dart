import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posttest7_1915016099_salassepkardianto/controller/movie_form_controller.dart';
import 'package:posttest7_1915016099_salassepkardianto/validation/submit_validation.dart';
import 'package:posttest7_1915016099_salassepkardianto/pages/main_page.dart';
import 'package:posttest7_1915016099_salassepkardianto/pages/movie_result.dart';
import 'package:posttest7_1915016099_salassepkardianto/validation/submit_validation.dart';

class Movie extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final TextController textController = Get.put(TextController());
    final RadioController radioController = Get.put(RadioController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Container( 
          width: MediaQuery.of(context).size.width,
          // height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 10, 10, 10),
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 80, 20, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children : [
                Text(
                  'Let\'s get closer!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Oxygen",
                    color: Colors.white,
                    letterSpacing: 1.5,
                  ),  
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: textController.firstNameController,
                  style: TextStyle(
                    fontFamily: "Oxygen",
                    color: Colors.white,
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
                    hintText: "John",
                    hintStyle: TextStyle(
                      fontFamily: "Oxygen",
                      color: Colors.grey,
                    ),
                    labelText: "First Name",
                    labelStyle: TextStyle(
                      fontFamily: "Oxygen",
                      color: Colors.grey
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: textController.lastNameController,
                  style: TextStyle(
                    fontFamily: "Oxygen",
                    color: Colors.white,
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
                    hintText: "Doe",
                    hintStyle: TextStyle(
                      fontFamily: "Oxygen",
                      color: Colors.grey,
                    ),
                    labelText: "Last Name",
                    labelStyle: TextStyle(
                      fontFamily: "Oxygen",
                      color: Colors.grey
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ), 
                Text(
                  "Choose your favorite genre :",
                  style: TextStyle(
                    fontFamily: "Oxygen",
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  textColor: Colors.white,
                  title: Text(
                    "All",
                    style: TextStyle(
                      fontFamily: "Oxygen",
                    ),
                  ),
                  leading: Obx(
                    () => Radio<Genre>(
                      fillColor: MaterialStateProperty.all(Colors.white),
                      value: Genre.all,
                      groupValue: radioController.genre.value,
                      onChanged: (value) {
                        radioController.genre(value);
                      }
                    )
                  ),
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
                    () => Radio<Genre>(
                      fillColor: MaterialStateProperty.all(Colors.white),
                      value: Genre.horror,
                      groupValue: radioController.genre.value,
                      onChanged: (value) {
                        radioController.genre(value);
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
                    () => Radio<Genre>(
                      fillColor: MaterialStateProperty.all(Colors.white),
                      value: Genre.action,
                      groupValue: radioController.genre.value,
                      onChanged: (value) {
                        radioController.genre(value);
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
                    () => Radio<Genre>(
                      fillColor: MaterialStateProperty.all(Colors.white),
                      value: Genre.comedy,
                      groupValue: radioController.genre.value,
                      onChanged: (value) {
                        radioController.genre(value);
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
                    () => Radio<Genre>(
                      fillColor: MaterialStateProperty.all(Colors.white),
                      value: Genre.romance,
                      groupValue: radioController.genre.value,
                      onChanged: (value) {
                        radioController.genre(value);
                      }
                    )
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Center(
                  child: Container(
                    width: 200,
                    height: 35,
                    decoration: BoxDecoration(

                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                      ),
                      onPressed: () {
                        textController.onPressed();
                        radioController.GetGenre();
                        SubmitValidation(context);
                      },
                      child: Text(
                        "Submit",
                        style: TextStyle(
                          fontFamily: 'Oxygen',
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          letterSpacing: 1
                        ),
                      )
                    )
                  ),
                ),
              ],
            ),
          ),
        ),
      ) 
    );
  }
}