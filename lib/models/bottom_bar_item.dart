import 'package:flutter/material.dart';

class BottomBarItem {
  final String title;
  final Widget icon;
  bool hasBadge;

  BottomBarItem({required this.title, required this.icon, bool? hasBadge})
      : hasBadge = hasBadge ?? false;
}
