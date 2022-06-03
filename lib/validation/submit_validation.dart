import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posttest7_1915016099_salassepkardianto/controller/movie_form_controller.dart';
import 'package:posttest7_1915016099_salassepkardianto/pages/main_page.dart';

void SubmitValidation (BuildContext context) {
  final TextController textControllerFinder = Get.find();
  
  var firstName = textControllerFinder.firstName;
  var lastName = textControllerFinder.lastName;

  if (firstName.isEmpty || lastName.isEmpty) {
    final snackBar = SnackBar(
      duration: const Duration(seconds: 3),
      content: Text(
        "Masih ada form yang kosong!",
        style: TextStyle(
          fontFamily: "Oxygen",
        ),
      ),
      backgroundColor: Colors.red,
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    return;
  }

  AlertDialog alert = AlertDialog(
    content: Container(
      child: Text(
        "Selamat datang $firstName",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: "Oxygen",
        ),  
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(2)
        )
      ),
    ),
    actions: [
      TextButton(
        onPressed: () {
          Get.off(MainPage());
        }, 
        child: Text(
          "Ok",
          style: TextStyle(
            fontFamily: "Oxygen",
          ), 
        )
      )
    ],
  );

  showDialog(context: context, builder: (context) => alert);
  return;
}