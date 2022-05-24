import 'package:flutter/material.dart';
import 'package:my_portfolio/ui/views/home/home_viewmodel.dart';
import 'package:stacked/stacked.dart';

class DesktopHomeView extends StatelessWidget{
  @override 
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive (
      builder: (context, model, child) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [],
            ),
          ),
        );
      },
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}