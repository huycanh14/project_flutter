import 'package:app_quanlynhanvien/ui/views/account/login/login_view.dart';
import 'package:app_quanlynhanvien/ui/views/account/registration/registration_view.dart';
import 'package:app_quanlynhanvien/ui/views/home/home_view.dart';
import 'package:auto_route/auto_route_annotations.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: LoginView, initial: true),
    MaterialRoute(page: HomeView),
    MaterialRoute(page: RegistrationView),
  ],
)
class $Router {}