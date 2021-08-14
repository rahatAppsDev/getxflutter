
import 'dart:convert';

import 'package:get/get_connect/connect.dart';
import 'package:getxfetch/models/productModel.dart';
import 'package:http/http.dart' as http;

class RemoteServices extends GetConnect {
  static var client = http.Client();

   static fetchProductsFromServer() async {
     print("fetch from server");

    var response = await http.get(Uri.parse("http://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline"));
    print("res ${response.statusCode}");
    if(response.statusCode == 200) {
      var jsonString = response.body;
      //print("response $response");
      //print(jsonString);
      //final parsed = json.decode(jsonString);
      //List tags = List.from(parsed.map((i) => Product.fromJson(i)));
      return productFromJson(jsonString);//json.decode(jsonString);//
    } else {
      print("null from server ${response.statusCode}");
      return null;

    }
    // Post request

  }

}