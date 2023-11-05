import 'package:calculator_app/ViewModel/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class TextWidget extends ViewModelWidget<HomeViewModel> {
  const TextWidget({super.key});
  
  @override
  Widget build(BuildContext context,HomeViewModel viewModel) {
    return Text(viewModel.counterValue.toString());
  }

}