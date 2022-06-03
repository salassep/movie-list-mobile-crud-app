import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posttest7_1915016099_salassepkardianto/controller/movie_form_controller.dart';

class ProfilePage extends StatelessWidget {

  final TextController textControllerFinder = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 10, 10, 10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.account_circle_outlined, color: Colors.white, size: 50,),
            SizedBox(
              height: 5,
            ),
            Center(
              child: Text(
                "${textControllerFinder.firstName} ${textControllerFinder.lastName}",
                style: TextStyle(
                  fontFamily: "Oxygen",
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}