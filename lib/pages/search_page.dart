import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posttest7_1915016099_salassepkardianto/controller/search_controller.dart';
import 'package:posttest7_1915016099_salassepkardianto/pages/detail_screen.dart';

class SearchPage extends StatelessWidget {
  SearchPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SearchController searchController = Get.put(SearchController());
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 10, 10, 10),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 90, 20, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Find Your Favorite Movie !",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                  onChanged: (value) => searchController.filterMovie(value),
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
                    hintText: "title, genre, artist ...",
                    hintStyle: TextStyle(
                      fontFamily: "Oxygen",
                      color: Colors.grey,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Obx( () => Text(
                  "Hasil pencarian : ${searchController.foundMovies.value.length}",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                ),
                SizedBox(
                  height: 15,
                ),
                Expanded(
                  child: Obx(() => ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: searchController.foundMovies.value.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Get.to(DetailScreen(movieTitle: searchController.foundMovies.value[index].title));
                        },
                        child: Card(
                          margin: const EdgeInsets.all(10),
                          child: ListTile(
                            tileColor: Colors.red,
                            textColor: Colors.white,
                            title: Text(
                              searchController.foundMovies.value[index].title,
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
                  ))
                )
            ],
          ),
        ),
      ),
    );
  }
}