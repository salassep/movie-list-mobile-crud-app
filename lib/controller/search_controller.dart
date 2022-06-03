import 'package:get/get.dart';
import 'package:posttest7_1915016099_salassepkardianto/model/movie_model.dart';

class SearchController extends GetxController {
  final List allMovies = moviesList;

  Rx foundMovies = Rx([]);

  @override
  void onInit() {
    super.onInit();
    foundMovies.value = allMovies;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void filterMovie(String movieTitle) {
    List results = [];
    if (movieTitle.isEmpty) {
      results = allMovies;
    } else {
      results = allMovies
          .where((element) => element.title
              .toString()
              .toLowerCase()
              .contains(movieTitle.toLowerCase()))
          .toList();
    }
    foundMovies.value = results;
  }
}