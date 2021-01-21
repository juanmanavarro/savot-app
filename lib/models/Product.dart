// import 'dart:convert';
// import 'package:flutter/foundation.dart';

class Product {
  final String id;
  final String url;
  final String name;
  final double price;
  final String image;
  final String platform;
  final String currency;
  final double cashback;
  final String productId;

  Product({
    this.id,
    this.url,
    this.name,
    this.price,
    this.image,
    this.platform,
    this.currency,
    this.cashback,
    this.productId,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      url: json['url'],
      name: json['name'],
      price: json['price'],
      image: json['image'],
      platform: json['platform'],
      currency: json['currency'],
      cashback: json['cashback'],
      productId: json['product_id'],
    );
  }
}
