import 'package:flutter/material.dart';

class Dubai {
  Icon icon;
  String title;
  String count;
  String items;

  Dubai({
    required this.icon,
    required this.title,
    required this.items,
    required this.count,
  });

  static List<Dubai> dubai = [
    Dubai(
        icon: Icon(
          Icons.people,
          size: 50,
        ),
        title: 'Comunity',
        count: '52',
        items: 'items'),
    Dubai(
        icon: Icon(
          Icons.message,
          size: 50,
        ),
        title: 'Forums',
        count: '32',
        items: 'items'),
    Dubai(
        icon: Icon(
          Icons.shopping_bag_outlined,
          size: 50,color: Colors.white,
        ),
        title: 'Jobs',
        count: '94',
        items: 'items'),
    Dubai(
        icon: Icon(
          Icons.home,
          size: 50,
        ),
        title: 'Housing',
        count: '21',
        items: 'items'),
    Dubai(
        icon: Icon(
          Icons.person,
          size: 50,
        ),
        title: 'Personals',
        count: '12',
        items: 'items'),
    Dubai(
        icon: Icon(
          Icons.bookmark_outline_outlined,
          size: 50,
        ),
        title: 'Sale',
        count: '41',
        items: 'items'),
  ];
}
