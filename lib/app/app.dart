import 'package:mvvm_advanced_may/services/api_service.dart';
import 'package:mvvm_advanced_may/services/pdf_service.dart';
import 'package:mvvm_advanced_may/ui/screens/home/home_view.dart';
import 'package:mvvm_advanced_may/ui/screens/splash/splash_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: SplashView, initial: true),
    MaterialRoute(page: HomeView),
  ],
  dependencies: [
    LazySingleton(classType: ApiService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: PdfService),
  ],
)
class AppSetup {}
