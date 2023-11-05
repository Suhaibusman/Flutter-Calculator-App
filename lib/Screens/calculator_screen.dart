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
              padding: const EdgeInsets.only(bottom: 20 , left: 10 ,right: 10 ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomContainer(number: 7,),
                       CustomContainer(number: 8,),
                        CustomContainer(number: 9,),
                       CustomContainer(operation: "*",bgColor: Colors.blue,)
            
                    ],
                  )
                ,const SizedBox(height: 10,)
                 , Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomContainer(number: 4,),
                       CustomContainer(number: 5,),
                        CustomContainer(number: 6,),
                       CustomContainer(operation: "-",bgColor: Colors.blue,)
            
                    ],
                  )
                   ,const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomContainer(number: 1,),
                       CustomContainer(number: 2,),
                        CustomContainer(number: 3,),
                       CustomContainer(operation: "+",bgColor: Colors.blue,)
            
                    ],
                  )
                    ,const SizedBox(height: 10,),Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomContainer(operation: ".",),
                       CustomContainer(number: 0,),
                        CustomContainer(operation: "x",),
                         CustomContainer(operation: "=",bgColor: Colors.blue,)
            
                    ],
                  ),
                
                ],
              ),
            ),
        ),
      );
    },);
  }
}