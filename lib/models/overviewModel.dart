import 'package:flutter/material.dart';

class OverviewModel {
  String description;
  String imgLink;
  String tagLine;
  OverviewModel({this.description, this.imgLink, this.tagLine});
}

class ServiceModel {
  String imgLink;
  String tagLine;
  Widget navigator;
  int index;
  ServiceModel({this.imgLink, this.tagLine, this.navigator, this.index});
}

class StartupModel {
  String description;
  String imgLink;
  String tagLine;
  bool isLeft;
  Widget navigator;
  StartupModel(
      {this.description,
      this.imgLink,
      this.tagLine,
      this.isLeft,
      this.navigator});
}
