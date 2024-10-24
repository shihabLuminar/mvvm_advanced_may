import 'package:flutter/material.dart';
import 'package:mvvm_advanced_may/ui/screens/dummy/dummy_viewmodel.dart';
import 'package:mvvm_advanced_may/ui/screens/home/home_viewmodel.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key, required this.data});
  final String data;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewmodel>.reactive(
      onViewModelReady: (viewModel) {}, // similar to init satate
      onDispose: (viewModel) {},

      builder: (context, viewModel, child) => Scaffold(
        body: Center(
          child: Text(
            viewModel.datainModel,
            style: TextStyle(),
          ),
        ),
      ),
      viewModelBuilder: () => HomeViewmodel(datainModel: data),
    );
  }
}
