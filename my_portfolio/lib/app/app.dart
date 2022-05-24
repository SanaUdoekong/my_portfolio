import 'package:my_portfolio/ui/views/home/home_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView, initial: true),
  ],
   dependencies: [
    LazySingleton(classType: NavigationService),
   ],
)
class App {}
