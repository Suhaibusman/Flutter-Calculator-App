import 'package:calculator_app/ViewModel/home_view_model.dart';
import 'package:calculator_app/widgets/container.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.nonReactive(viewModelBuilder: () => HomeViewModel(), builder: (context, viewModel, child) {
      return  SafeArea(
        child: Scaffold(
            body: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomContainer(number: 1,),
                       CustomContainer(number: 2,),
                        CustomContainer(number: 3,),
                         CustomContainer(number: 4,)
            
                    ],
                  )
                ],
              ),
            ),
        ),
      );
    },);
  }
}