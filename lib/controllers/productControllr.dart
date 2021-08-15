// ignore_for_file: file_names

import 'package:get/state_manager.dart';
import 'package:getxfetch/models/productModel.dart';
import 'package:getxfetch/services/remote_services.dart';


class ProductController extends GetxController {

  var isLoading = true.obs;

  var productList = <dynamic>[].obs;
  var remoteServices = RemoteServices();


  @override
  void onInit() {
    print("object");
    fetchProducts();
    super.onInit();

  }

  void fetchProducts() async {
    isLoading(true);

    try {
      var products = await RemoteServices.fetchProductsFromServer();
      print("fetch products $products");
      if (products != null) {
        productList.value = products;

      }
    } finally{
        isLoading(false);
    }

  }


}