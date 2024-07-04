


import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class Utils {




  // Toast Message
  static toastMessage(String message){
    Fluttertoast.showToast(
        msg: message,

    );
  }

  //SnackBar Message

  //snackBar Message
  static snackBar(String title,String message){
    Get.snackbar(
      title,
      message,

    );

  }



}