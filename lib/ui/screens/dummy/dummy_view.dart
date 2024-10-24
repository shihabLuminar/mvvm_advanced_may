import 'package:flutter/material.dart';
import 'package:mvvm_advanced_may/ui/screens/dummy/dummy_viewmodel.dart';
import 'package:stacked/stacked.dart';

class DummyView extends StatelessWidget {
  const DummyView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DummyViewmodel>.reactive(
      onViewModelReady: (viewModel) {}, // similar to init satate
      onDispose: (viewModel) {},

      builder: (context, viewModel, child) => Scaffold(),
      viewModelBuilder: () => DummyViewmodel(),
    );
  }
}
