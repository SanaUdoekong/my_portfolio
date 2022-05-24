import 'package:flutter/material.dart';
import 'package:my_portfolio/ui/views/home/home_view_mobile.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return MobileHomeView();
  }
}
