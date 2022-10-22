import 'package:get/get.dart';

import '../database/user_database.dart';
import '../modules/emailAuth/bindings/email_auth_binding.dart';
import '../modules/emailAuth/views/email_auth_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/newUser/bindings/new_user_binding.dart';
import '../modules/newUser/views/new_user_view.dart';
import '../modules/otp/bindings/otp_binding.dart';
import '../modules/otp/views/otp_view.dart';
import '../modules/passwordLogin/bindings/password_login_binding.dart';
import '../modules/passwordLogin/views/password_login_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

// ignore_for_file: non_constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static final INITIAL =
      UserDatabase.isUserLoggedIn() ? Routes.HOME : Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: (() => const LoginView()),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.OTP,
      page: () => const OtpView(),
      binding: OtpBinding(),
    ),
    GetPage(
      name: _Paths.EMAIL_AUTH,
      page: () => const EmailAuthView(),
      binding: EmailAuthBinding(),
    ),
    GetPage(
      name: _Paths.NEW_USER,
      page: () => const NewUserView(),
      binding: NewUserBinding(),
    ),
    GetPage(
      name: _Paths.PASSWORD_LOGIN,
      page: () => const PasswordLoginView(),
      binding: PasswordLoginBinding(),
    ),
  ];
}
