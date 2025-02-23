import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';



class CarouselWithNetworkImages extends StatelessWidget {
  final List<String> imgList = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9eoCQXKwxdQuVpHT1jxKRI6-4yV8anWDEvg&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyfHylRaSQq6N2oMRZbgoMEroySGJ0NUw3nA&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlSF-XQ1QT3F-LsYUc6ffHpSlGhSFJF8E-Pw&s',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Network Images Carousel'),
      ),
      body: CarouselSlider(
        options: CarouselOptions(
          height: 400.0,
          autoPlay: true,
          enlargeCenterPage: true,
          aspectRatio: 16 / 9,
          autoPlayCurve: Curves.fastOutSlowIn,
          autoPlayAnimationDuration: Duration(milliseconds: 400),
          viewportFraction: 0.6,
        ),
        items: imgList.map((item) => Container(
          margin: EdgeInsets.all(5.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.network(item, fit: BoxFit.cover, width: 1000),
          ),
        )).toList(),
      ),
    );
  }
}