import 'dart:async';

// import 'package:mvvm_boilerplate/app/app.router.dart';
import 'package:mvvm_advanced_may/app/app.locator.dart';
import 'package:mvvm_advanced_may/app/app.router.dart';
import 'package:mvvm_advanced_may/services/pdf_service.dart';
import 'package:stacked/stacked.dart';

import '../../../app/utils.dart';

class SplashViewModel extends BaseViewModel {
  Timer? _timer;

  void startTimer() async {
    _timer = Timer(const Duration(seconds: 3), () async {
      // if (hasUser) {
      //   //Navigate to login
      // } else {
      //   // Navigate to home
      navigationService.navigateTo(Routes.homeView,
          arguments: HomeViewArguments(data: "hello i am from new splash"));
      // }

      locator<PdfService>().printPdf();
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
