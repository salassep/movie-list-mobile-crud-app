import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posttest7_1915016099_salassepkardianto/controller/crud_movie_controller.dart';
import 'package:posttest7_1915016099_salassepkardianto/controller/movie_form_controller.dart';
import 'package:posttest7_1915016099_salassepkardianto/pages/creat_movie.dart';
import 'package:posttest7_1915016099_salassepkardianto/pages/detail_screen.dart';
import 'package:posttest7_1915016099_salassepkardianto/pages/detail_screen_firebase.dart';

class MovieResult extends StatelessWidget {

  final TextController textControllerFinder = Get.find(); 
  final RadioController radioControllerFinder = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.fromLTRB(20, 90, 20, 20),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 10, 10, 10),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Halo, ${textControllerFinder.firstName} ${textControllerFinder.lastName} !",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Oxygen",
                    color: Colors.white,
                    letterSpacing: 1.2,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Berikut rekomendasi film untuk kamu",
                  style: TextStyle(
                    fontFamily: "Oxygen",
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: radioControllerFinder.movies.length,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final movieTitle = radioControllerFinder.movies[index];
                      return InkWell(
                        onTap: () {
                          Get.to(DetailScreen(movieTitle: movieTitle));
                        },
                        child: Card(
                          color: Color.fromARGB(255, 10, 10, 10),
                          margin: const EdgeInsets.all(10),
                          child: ListTile(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)
                            ),
                            tileColor: Colors.red,
                            textColor: Colors.white,
                            title: Text(
                              radioControllerFinder.movies[index],
                              style: TextStyle(
                                fontFamily: 'Oxygen',
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.2,
                              ),  
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Berikut film hasil masukkan pengguna lain",
                  style: TextStyle(
                    fontFamily: "Oxygen",
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                StreamBuilder<QuerySnapshot>(
                  stream: FirebaseFirestore.instance.collection("movies").snapshots(),
                  builder: (context, snapshot) {
                    if(snapshot.hasData) {
                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: snapshot.data!.docs.length,
                        itemBuilder: (context, index) {
                          DocumentSnapshot doc = snapshot.data!.docs[index];
                          return InkWell(
                            onTap: () => Get.to(DetailScreenFirebase(doc.id, doc['title'], doc['duration'], doc['genre'], doc['created'], doc['updated'], doc['scenario'])),
                            child: Card(
                              color: Color.fromARGB(255, 10, 10, 10),
                              margin: const EdgeInsets.all(10),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)
                                ),
                                tileColor: Colors.red,
                                textColor: Colors.white,
                                title: Text(
                                  doc['title'],
                                  style: TextStyle(
                                    fontFamily: 'Oxygen',
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.2,
                                  ),  
                                ),
                              ),
                            )                     
                          );       
                        },
                      );
                    } else {
                      return Text("Belum ada data", style: TextStyle(color: Colors.white));
                    }
                  },
                ),
                SizedBox(
                  height: 50,
                )
              ],
            ),
          ),
        ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          size: 25,
          color: Colors.red,
        ),
        backgroundColor: Colors.white,
        splashColor: Colors.grey,
        onPressed: () => Get.to(CreateMovie())
      )
    );
  }
}
