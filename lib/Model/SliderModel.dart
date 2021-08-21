import 'package:flutter/material.dart';


class SliderModel{

  String imageAssetPath;
  String title;
  String desc;

  SliderModel({this.imageAssetPath,this.title,this.desc});

  void setImageAssetPath(String getImageAssetPath){
    imageAssetPath = getImageAssetPath;
  }

  void setTitle(String getTitle){
    title = getTitle;
  }

  void setDesc(String getDesc){
    desc = getDesc;
  }

  String getImageAssetPath(){
    return imageAssetPath;
  }

  String getTitle(){
    return title;
  }

  String getDesc(){
    return desc;
  }

}


List<SliderModel> getSlides(){

  List<SliderModel> slides = new List<SliderModel>();
  SliderModel sliderModel = new SliderModel();

  //1
  sliderModel.setDesc("Our food plan is filled with delicious seasonal vegetables, whole grains, fast food , burgger , pizza etc.Our food plan is filled with delicious seasonal vegetables, whole grains, fast food , burgger , pizza etc.");
  sliderModel.setTitle("Scan Product");
  sliderModel.setImageAssetPath("assets/images/SilderImage3.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //2
  sliderModel.setDesc("Our food plan is filled with delicious seasonal vegetables, whole grains, fast food , burgger , pizza etc.Our food plan is filled with delicious seasonal vegetables, whole grains, fast food , burgger , pizza etc.");
  sliderModel.setTitle("View Information");
  sliderModel.setImageAssetPath("assets/images/SilderImage2.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //3
  sliderModel.setDesc("Our food plan is filled with delicious seasonal vegetables, whole grains, fast food , burgger , pizza etc.Our food plan is filled with delicious seasonal vegetables, whole grains, fast food , burgger , pizza etc.");
  sliderModel.setTitle("Any Pay");
  sliderModel.setImageAssetPath("assets/images/SilderImage3.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  return slides;
}