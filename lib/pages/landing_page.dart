import 'dart:async';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:posttest7_1915016099_salassepkardianto/controller/splash_screen_controller.dart';
import 'package:posttest7_1915016099_salassepkardianto/pages/movie_form.dart';

class SplashScreen extends StatelessWidget {

  SplashScreen({ Key? key }) : super(key: key);
  
  final SplashScreenController splashScreenController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 10, 10, 10),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/film-reel.png",
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "MovieApp",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 32, 32),
                    fontFamily: 'Oswald',
                    fontSize: 20
                  ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


class LandingPage extends StatelessWidget {
  const LandingPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              "assets/images/film-reel.png",
              fit: BoxFit.contain,
              height: 28,
            ),
            Container(
              padding: EdgeInsets.only(left: 5),
              child: Text(
                "MovieApp",
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 32, 32),
                  fontFamily: 'Oswald',
                ),
              ),
            ),
          ],
        ),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.only(right: 20),
            alignment: Alignment.center,
            child:  Icon(
              Icons.menu,
              color: Colors.white,
              size: 25,
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: double.infinity,
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/eleven.gif"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.9),
              BlendMode.darken,
            ),
          ),
        ), 
        child: Center(
          child: ListView(
            shrinkWrap: true,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "MOVIE AND CHILL",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Oswald',
                  color: Colors.white,
                  letterSpacing: 1.8,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8, bottom: 15),
                child: Text (
                  "Watch anywhere and anytime until you fall asleep \nand have sweet dreams",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Oxygen',
                    fontSize: 14.0,
                    color: Colors.white,
                  ),
                ),
              ),
              Image.asset(
                "assets/images/illus.png",
                height: 220,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Are you ready to be a Real Watcher ?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Oxygen',
                  fontSize: 14.0,
                  color: Colors.white
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 80),
                child: Container(
                  width: 50,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.red
                  ),
                  child: GestureDetector(
                    child: Center(
                      child: Text(
                        "Let's Go!",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "Oxygen",
                          letterSpacing: 1.2,
                          color: Colors.white
                        ),
                      ),
                    ),
                    onTap: () {
                      Get.off(Movie());
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 30),
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(
                          width: 1,
                          color: Colors.white
                        ),
                      ),
                    ),
                    child: Column(
                      children: [
                        Icon(
                          Icons.local_movies_outlined, 
                          size: 20,
                          color: Colors.white,
                        ),
                        Text(
                          " More complete ",
                          style: TextStyle(
                            fontFamily: 'Oxygen-light',
                            fontSize: 14.0,
                            color: Colors.white,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(
                          width: 1,
                          color: Colors.white
                        ),
                      ),
                    ),
                    child: Column(
                      children: [
                        Icon(
                          Icons.add_reaction_outlined, 
                          size: 20,
                          color: Colors.white,
                        ),
                        Text(
                          " More fun ",
                          style: TextStyle(
                            fontFamily: 'Oxygen-light',
                            fontSize: 14.0,
                            color: Colors.white,
                            height: 1.5
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 30),
                    child: Column(
                      children: [
                        Icon(
                          Icons.high_quality_outlined, 
                          size: 20,
                          color: Colors.white,
                        ),
                        Text(
                          " More quality ",
                          style: TextStyle(
                            fontFamily: 'Oxygen-light',
                            fontSize: 14.0,
                            color: Colors.white,
                            height: 1.5
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),

        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Container(
          height: 40,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                width: 1, 
                color: Color.fromARGB(66, 255, 255, 255)
              ),
            )
          ),
          child:  Text(
            "Salas Sepkardianto/1915016099",
            style: TextStyle(
              fontFamily: 'Oxygen',
              color: Color.fromARGB(211, 255, 255, 255)
            ),
          ),
        ),
      ),
    );
  }
}
