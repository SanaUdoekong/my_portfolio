import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/utils.dart';
import 'package:my_portfolio/ui/views/home/home_viewmodel.dart';
import 'package:stacked/stacked.dart';

class MobileHomeView extends StatefulWidget {
  @override
  State<MobileHomeView> createState() => _MobileHomeViewState();
}

class _MobileHomeViewState extends State<MobileHomeView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) {
        return SafeArea(
          child: Scaffold(
            body: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'S',
                        style: TextStyle(
                          color: AppColors.primaryBlue,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      Container(
                        height: 35,
                        width: 35,
                        decoration: const BoxDecoration(
                          color: AppColors.primaryBlue,
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                          boxShadow: [BoxShadow(blurRadius: 1)],
                        ),
                        child:
                            const Icon(Icons.mail, color: Colors.white, size: 20),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  const Text(
                    'Hello, I am ',
                    style: AppFonts.h1dark,
                  ),
                  Text(
                    model.name,
                    style: AppFonts.h1dark,
                  ),
                  const SizedBox(height: 30),
                  Container(
                    height: 300,
                    decoration: const BoxDecoration(
                      color: AppColors.secondaryBlue,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
