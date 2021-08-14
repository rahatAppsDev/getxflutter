// ignore: file_names

// ignore_for_file: file_names

import 'dart:convert';
import 'package:get/get.dart';
/*

class Product {
  int id;
  dynamic brand;
  dynamic name;
  dynamic price;
  Null priceSign;
  Null currency;
  dynamic imageLink;
  dynamic productLink;
  dynamic websiteLink;
  dynamic description;
  int rating;
  Null category;
  dynamic productType;
  List<Null> tagList;
  dynamic createdAt;
  dynamic updatedAt;
  dynamic productApiUrl;
  dynamic apiFeaturedImage;
  List<Null> productColors;

  Product(
      {
        required this.id,
        required this.brand,
        required this.name,
        required this.price,
        required this.priceSign,
        required this.currency,
        required this.imageLink,
        required this.productLink,
        required this.websiteLink,
        required this.description,
        required this.rating,
        required this.category,
        required this.productType,
        required this.tagList,
        required this.createdAt,
        required this.updatedAt,
        required this.productApiUrl,
        required this.apiFeaturedImage,
        required this.productColors});

  Product.fromJson(Map<dynamic, dynamic> json) {
    id = json['id'];
    brand = json['brand'];
    name = json['name'];
    price = json['price'];
    priceSign = json['price_sign'];
    currency = json['currency'];
    imageLink = json['image_link'];
    productLink = json['product_link'];
    websiteLink = json['website_link'];
    description = json['description'];
    rating = json['rating'];
    category = json['category'];
    productType = json['product_type'];
    if (json['tag_list'] != null) {
      tagList = new List<Null>();
      json['tag_list'].forEach((v) {
        tagList.add(new Null.fromJson(v));
      });
    }
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    productApiUrl = json['product_api_url'];
    apiFeaturedImage = json['api_featured_image'];
    if (json['product_colors'] != null) {
      productColors = new List<Null>();
      json['product_colors'].forEach((v) {
        productColors.add(new Null.fromJson(v));
      });
    }
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = new Map<dynamic, dynamic>();
    data['id'] = this.id;
    data['brand'] = this.brand;
    data['name'] = this.name;
    data['price'] = this.price;
    data['price_sign'] = this.priceSign;
    data['currency'] = this.currency;
    data['image_link'] = this.imageLink;
    data['product_link'] = this.productLink;
    data['website_link'] = this.websiteLink;
    data['description'] = this.description;
    data['rating'] = this.rating;
    data['category'] = this.category;
    data['product_type'] = this.productType;
    if (this.tagList != null) {
      data['tag_list'] = this.tagList.map((v) => v!.toJson()).toList();
    }
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['product_api_url'] = this.productApiUrl;
    data['api_featured_image'] = this.apiFeaturedImage;
    if (this.productColors != null) {
      data['product_colors'] =
          this.productColors.map((v) => v.toJson()).toList();
    }
    return data;
  }
}





*/



List<Product> productFromJson(dynamic str) =>
    List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

dynamic productToJson(List<Product> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
  void count() {
    print(123);
  }
  Product({
    required this.id,
    required this.brand,
    required this.name,
    required this.price,
    required this.priceSign,
    required this.currency,
    required this.imageLink,
    required this.productLink,
    required this.websiteLink,
    required this.description,
    required this.rating,
    required this.category,
    required this.productType,
    required this.tagList,
    required this.createdAt,
    required this.updatedAt,
    required this.productApiUrl,
    required this.apiFeaturedImage,
    required this.productColors,
  });

  int id;
  dynamic brand;
  dynamic name;
  dynamic price;
  dynamic priceSign;
  dynamic currency;
  dynamic imageLink;
  dynamic productLink;
  dynamic websiteLink;
  dynamic description;
  dynamic rating;
  dynamic category;
  dynamic productType;
  List<dynamic> tagList;
  dynamic createdAt;
  dynamic updatedAt;
  dynamic productApiUrl;
  dynamic apiFeaturedImage;
  List<dynamic> productColors;

  var isFavorite = false.obs;

  factory Product.fromJson(Map<dynamic, dynamic> json) {
    print("from json ${json["product_colors"]}");
    try {
      Product(
        id: json["id"],
        brand: json["brand"],
        name: json["name"],
        price: json["price"],
        priceSign: json["price_sign"],
        currency: json["currency"],
        imageLink: json["image_link"],
        productLink: json["product_link"],
        websiteLink: json["website_link"],
        description: json["description"],
        rating: json["rating"] == null ? null : json["rating"].toDouble(),
        category: json["category"] == null ? null : json["category"],
        productType: json["product_type"],
        tagList: List<dynamic>.from(json["tag_list"].map((x) => x)),
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        productApiUrl: json["product_api_url"],
        apiFeaturedImage: json["api_featured_image"],
        productColors: List<ProductColor>.from(
            json["product_colors"].map((x) => ProductColor.fromJson(x))),
      );
    } catch(e) {
      print(e);
    }

    return Product(
    id: json["id"],
    brand: json["brand"],
    name: json["name"],
    price: json["price"],
    priceSign: json["price_sign"],
    currency: json["currency"],
    imageLink: json["image_link"],
    productLink: json["product_link"],
    websiteLink: json["website_link"],
    description: json["description"],
    rating: json["rating"] == null ? null : json["rating"].toDouble(),
    category: json["category"] == null ? null : json["category"],
    productType: json["product_type"],
    tagList: List<dynamic>.from(json["tag_list"].map((x) => x)),
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    productApiUrl: json["product_api_url"],
    apiFeaturedImage: json["api_featured_image"],
    productColors: List<ProductColor>.from(
        json["product_colors"].map((x) => ProductColor.fromJson(x))),
  );}

  Map<dynamic, dynamic> toJson() => {
    "id": id,
    "brand": brand,
    "name": name,
    "price": price,
    "price_sign": priceSign,
    "currency": currency,
    "image_link": imageLink,
    "product_link": productLink,
    "website_link": websiteLink,
    "description": description,
    "rating": rating == null ? null : rating,
    "category": category == null ? null : category,
    "product_type": productType,
    /*"tag_list": List<dynamic>.from(tagList.map((x) => x)),
    "created_at": createdAt.toIso8601dynamic(),
    "updated_at": updatedAt.toIso8601dynamic(),
    "product_api_url": productApiUrl,
    "api_featured_image": apiFeaturedImage,
    "product_colors":
    List<dynamic>.from(productColors.map((x) => x.toJson())),*/
  };
}

enum Brand { MAYBELLINE }

//final brandValues = EnumValues({"maybelline": Brand.MAYBELLINE});

class ProductColor {
  ProductColor({
    required this.hexValue,
    required this.colourName,
  });

  dynamic hexValue;
  dynamic colourName;

  factory ProductColor.fromJson(Map<dynamic, dynamic> json) {print("from color");
  return ProductColor(
    hexValue: json["hex_value"],
    colourName: json["colour_name"] == null ? null : json["colour_name"],
  );}

  Map<dynamic, dynamic> toJson() => {
    "hex_value": hexValue,
    "colour_name": colourName == null ? null : colourName,
  };
}

