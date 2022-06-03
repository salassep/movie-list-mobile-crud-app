import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextController extends GetxController {
  var firstName = "".obs;
  var lastName = "".obs;

  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();

  onPressed() {
    firstName = firstNameController.text.obs;
    lastName = lastNameController.text.obs;
  }

  @override
  void onClose() {
    firstNameController.dispose();
    lastNameController.dispose();
    super.onClose();
  }
}

enum Genre {all, horror, comedy, action, romance}

class RadioController extends GetxController {
  var genre = Genre.all.obs;
  List movies = [].obs;

  void GetGenre() {
    if(genre == Genre.horror) {
      movies = ["Pengabdi Setan", "Kuntilanak", "Danur", "KKN Desa Penari"];
    } else if(genre == Genre.action) {
      movies = ["The Raid", "Headshoot", "Gundala", "Serigala Terakhir"];
    } else if(genre == Genre.comedy) {
      movies = ["Kuala Kumal", "Cek Toko Sebelah", "Single", "Marmut Merah Jambu"];
    } else if(genre == Genre.romance) {
      movies = ["Seperti Dendam", "5 CM", "Tenggelamnya Kapal VDW", "Ayat Cinta"];
    } else {
      movies = ["Pengabdi Setan", "Kuntilanak", "Danur", "KKN Desa Penari","The Raid", "Headshoot", "Gundala", "Serigala Terakhir","Kuala Kumal", "Cek Toko Sebelah", "Single", "Marmut Merah Jambu", "Seperti Dendam", "5 CM", "Tenggelamnya Kapal VDW", "Ayat Cinta"];
    }

  }

  onChanged (value) {
    genre(value);
  }
}