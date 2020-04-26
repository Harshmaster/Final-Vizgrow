import 'package:flutter/material.dart';

class OverviewModel{
  String description;
  String imgLink;
  String tagLine;
  OverviewModel({this.description,this.imgLink,this.tagLine});
}

class ServiceModel{
  String imgLink;
  String tagLine;
  Widget navigator;
 ServiceModel({this.imgLink,this.tagLine,this.navigator});
}

class StartupModel{
  String description;
  String imgLink;
  String tagLine;
  bool isLeft;
  StartupModel({this.description,this.imgLink,this.tagLine,this.isLeft});
}