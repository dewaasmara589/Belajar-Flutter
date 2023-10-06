import 'package:flutter/material.dart';

class dataModel{
  var id;
  var image = "";
  var title = "";
  var subTitle = "";
  var rating;
  var duration = "";
  var price;
  var type = "";
  var desc = "";

  dataModel({
    required this.id,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.rating,
    required this.duration,
    required this.price,
    required this.type,
    required this.desc,
  });
}