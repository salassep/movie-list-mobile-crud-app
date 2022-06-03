import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posttest7_1915016099_salassepkardianto/controller/navbar_controller.dart';
import 'package:posttest7_1915016099_salassepkardianto/pages/movie_result.dart';
import 'package:posttest7_1915016099_salassepkardianto/pages/profile_page.dart';
import 'package:posttest7_1915016099_salassepkardianto/pages/search_page.dart';


class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final BottomNavbarController bottomNavbarController = Get.put(BottomNavbarController());
    return Scaffold(
       appBar: AppBar(
        automaticallyImplyLeading: false,
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
      bottomNavigationBar: Obx(() => BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 10, 10, 10),
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.red,
        type: BottomNavigationBarType.fixed,
        currentIndex: bottomNavbarController.pageIndex.value,
        onTap: bottomNavbarController.changePageIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "Account",
          ),
        ],
      )),
      body: Obx(() => IndexedStack(
        index: bottomNavbarController.pageIndex.value,
        children: [
          MovieResult(),
          SearchPage(),
          ProfilePage(),
        ],
      )),
    );
  }
}