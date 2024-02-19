import 'package:ludo_king_clone/presentation/splash_screen/splash_screen.dart';
import 'package:ludo_king_clone/presentation/splash_screen/binding/splash_binding.dart';
import 'package:ludo_king_clone/presentation/settings_screen/settings_screen.dart';
import 'package:ludo_king_clone/presentation/settings_screen/binding/settings_binding.dart';
import 'package:ludo_king_clone/presentation/profile_screen/profile_screen.dart';
import 'package:ludo_king_clone/presentation/profile_screen/binding/profile_binding.dart';
import 'package:ludo_king_clone/presentation/exit_screen/exit_screen.dart';
import 'package:ludo_king_clone/presentation/exit_screen/binding/exit_binding.dart';
import 'package:ludo_king_clone/presentation/home_screen/home_screen.dart';
import 'package:ludo_king_clone/presentation/home_screen/binding/home_binding.dart';
import 'package:ludo_king_clone/presentation/payments_or_registration_screen/payments_or_registration_screen.dart';
import 'package:ludo_king_clone/presentation/payments_or_registration_screen/binding/payments_or_registration_binding.dart';
import 'package:ludo_king_clone/presentation/payment_method_screen/payment_method_screen.dart';
import 'package:ludo_king_clone/presentation/payment_method_screen/binding/payment_method_binding.dart';
import 'package:ludo_king_clone/presentation/registration_submit_screen/registration_submit_screen.dart';
import 'package:ludo_king_clone/presentation/registration_submit_screen/binding/registration_submit_binding.dart';
import 'package:ludo_king_clone/presentation/registration_submit_two_screen/registration_submit_two_screen.dart';
import 'package:ludo_king_clone/presentation/registration_submit_two_screen/binding/registration_submit_two_binding.dart';
import 'package:ludo_king_clone/presentation/tournament_screen/tournament_screen.dart';
import 'package:ludo_king_clone/presentation/tournament_screen/binding/tournament_binding.dart';
import 'package:ludo_king_clone/presentation/tournament_two_screen/tournament_two_screen.dart';
import 'package:ludo_king_clone/presentation/tournament_two_screen/binding/tournament_two_binding.dart';
import 'package:ludo_king_clone/presentation/tournament_three_screen/tournament_three_screen.dart';
import 'package:ludo_king_clone/presentation/tournament_three_screen/binding/tournament_three_binding.dart';
import 'package:ludo_king_clone/presentation/tournament_four_screen/tournament_four_screen.dart';
import 'package:ludo_king_clone/presentation/tournament_four_screen/binding/tournament_four_binding.dart';
import 'package:ludo_king_clone/presentation/tournament_five_screen/tournament_five_screen.dart';
import 'package:ludo_king_clone/presentation/tournament_five_screen/binding/tournament_five_binding.dart';
import 'package:ludo_king_clone/presentation/tournament_six_screen/tournament_six_screen.dart';
import 'package:ludo_king_clone/presentation/tournament_six_screen/binding/tournament_six_binding.dart';
import 'package:ludo_king_clone/presentation/tournament_game_screen/tournament_game_screen.dart';
import 'package:ludo_king_clone/presentation/tournament_game_screen/binding/tournament_game_binding.dart';
import 'package:ludo_king_clone/presentation/exit_one_screen/exit_one_screen.dart';
import 'package:ludo_king_clone/presentation/exit_one_screen/binding/exit_one_binding.dart';
import 'package:ludo_king_clone/presentation/tournament_result_screen/tournament_result_screen.dart';
import 'package:ludo_king_clone/presentation/tournament_result_screen/binding/tournament_result_binding.dart';
import 'package:ludo_king_clone/presentation/computer_screen/computer_screen.dart';
import 'package:ludo_king_clone/presentation/computer_screen/binding/computer_binding.dart';
import 'package:ludo_king_clone/presentation/computer_two_screen/computer_two_screen.dart';
import 'package:ludo_king_clone/presentation/computer_two_screen/binding/computer_two_binding.dart';
import 'package:ludo_king_clone/presentation/computer_game_screen/computer_game_screen.dart';
import 'package:ludo_king_clone/presentation/computer_game_screen/binding/computer_game_binding.dart';
import 'package:ludo_king_clone/presentation/exit_three_screen/exit_three_screen.dart';
import 'package:ludo_king_clone/presentation/exit_three_screen/binding/exit_three_binding.dart';
import 'package:ludo_king_clone/presentation/pass_n_play_screen/pass_n_play_screen.dart';
import 'package:ludo_king_clone/presentation/pass_n_play_screen/binding/pass_n_play_binding.dart';
import 'package:ludo_king_clone/presentation/pass_n_play_one_screen/pass_n_play_one_screen.dart';
import 'package:ludo_king_clone/presentation/pass_n_play_one_screen/binding/pass_n_play_one_binding.dart';
import 'package:ludo_king_clone/presentation/pass_n_play_two_screen/pass_n_play_two_screen.dart';
import 'package:ludo_king_clone/presentation/pass_n_play_two_screen/binding/pass_n_play_two_binding.dart';
import 'package:ludo_king_clone/presentation/pass_n_play_three_screen/pass_n_play_three_screen.dart';
import 'package:ludo_king_clone/presentation/pass_n_play_three_screen/binding/pass_n_play_three_binding.dart';
import 'package:ludo_king_clone/presentation/pass_n_play_four_screen/pass_n_play_four_screen.dart';
import 'package:ludo_king_clone/presentation/pass_n_play_four_screen/binding/pass_n_play_four_binding.dart';
import 'package:ludo_king_clone/presentation/pass_n_play_game_screen/pass_n_play_game_screen.dart';
import 'package:ludo_king_clone/presentation/pass_n_play_game_screen/binding/pass_n_play_game_binding.dart';
import 'package:ludo_king_clone/presentation/exit_two_screen/exit_two_screen.dart';
import 'package:ludo_king_clone/presentation/exit_two_screen/binding/exit_two_binding.dart';
import 'package:ludo_king_clone/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:ludo_king_clone/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String settingsScreen = '/settings_screen';

  static const String profileScreen = '/profile_screen';

  static const String exitScreen = '/exit_screen';

  static const String homeScreen = '/home_screen';

  static const String paymentsOrRegistrationScreen =
      '/payments_or_registration_screen';

  static const String paymentMethodScreen = '/payment_method_screen';

  static const String registrationSubmitScreen = '/registration_submit_screen';

  static const String registrationSubmitTwoScreen =
      '/registration_submit_two_screen';

  static const String tournamentScreen = '/tournament_screen';

  static const String tournamentTwoScreen = '/tournament_two_screen';

  static const String tournamentThreeScreen = '/tournament_three_screen';

  static const String tournamentFourScreen = '/tournament_four_screen';

  static const String tournamentFiveScreen = '/tournament_five_screen';

  static const String tournamentSixScreen = '/tournament_six_screen';

  static const String tournamentGameScreen = '/tournament_game_screen';

  static const String exitOneScreen = '/exit_one_screen';

  static const String tournamentResultScreen = '/tournament_result_screen';

  static const String computerScreen = '/computer_screen';

  static const String computerTwoScreen = '/computer_two_screen';

  static const String computerGameScreen = '/computer_game_screen';

  static const String exitThreeScreen = '/exit_three_screen';

  static const String passNPlayScreen = '/pass_n_play_screen';

  static const String passNPlayOneScreen = '/pass_n_play_one_screen';

  static const String passNPlayTwoScreen = '/pass_n_play_two_screen';

  static const String passNPlayThreeScreen = '/pass_n_play_three_screen';

  static const String passNPlayFourScreen = '/pass_n_play_four_screen';

  static const String passNPlayGameScreen = '/pass_n_play_game_screen';

  static const String exitTwoScreen = '/exit_two_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: settingsScreen,
      page: () => SettingsScreen(),
      bindings: [
        SettingsBinding(),
      ],
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [
        ProfileBinding(),
      ],
    ),
    GetPage(
      name: exitScreen,
      page: () => ExitScreen(),
      bindings: [
        ExitBinding(),
      ],
    ),
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      bindings: [
        HomeBinding(),
      ],
    ),
    GetPage(
      name: paymentsOrRegistrationScreen,
      page: () => PaymentsOrRegistrationScreen(),
      bindings: [
        PaymentsOrRegistrationBinding(),
      ],
    ),
    GetPage(
      name: paymentMethodScreen,
      page: () => PaymentMethodScreen(),
      bindings: [
        PaymentMethodBinding(),
      ],
    ),
    GetPage(
      name: registrationSubmitScreen,
      page: () => RegistrationSubmitScreen(),
      bindings: [
        RegistrationSubmitBinding(),
      ],
    ),
    GetPage(
      name: registrationSubmitTwoScreen,
      page: () => RegistrationSubmitTwoScreen(),
      bindings: [
        RegistrationSubmitTwoBinding(),
      ],
    ),
    GetPage(
      name: tournamentScreen,
      page: () => TournamentScreen(),
      bindings: [
        TournamentBinding(),
      ],
    ),
    GetPage(
      name: tournamentTwoScreen,
      page: () => TournamentTwoScreen(),
      bindings: [
        TournamentTwoBinding(),
      ],
    ),
    GetPage(
      name: tournamentThreeScreen,
      page: () => TournamentThreeScreen(),
      bindings: [
        TournamentThreeBinding(),
      ],
    ),
    GetPage(
      name: tournamentFourScreen,
      page: () => TournamentFourScreen(),
      bindings: [
        TournamentFourBinding(),
      ],
    ),
    GetPage(
      name: tournamentFiveScreen,
      page: () => TournamentFiveScreen(),
      bindings: [
        TournamentFiveBinding(),
      ],
    ),
    GetPage(
      name: tournamentSixScreen,
      page: () => TournamentSixScreen(),
      bindings: [
        TournamentSixBinding(),
      ],
    ),
    GetPage(
      name: tournamentGameScreen,
      page: () => TournamentGameScreen(),
      bindings: [
        TournamentGameBinding(),
      ],
    ),
    GetPage(
      name: exitOneScreen,
      page: () => ExitOneScreen(),
      bindings: [
        ExitOneBinding(),
      ],
    ),
    GetPage(
      name: tournamentResultScreen,
      page: () => TournamentResultScreen(),
      bindings: [
        TournamentResultBinding(),
      ],
    ),
    GetPage(
      name: computerScreen,
      page: () => ComputerScreen(),
      bindings: [
        ComputerBinding(),
      ],
    ),
    GetPage(
      name: computerTwoScreen,
      page: () => ComputerTwoScreen(),
      bindings: [
        ComputerTwoBinding(),
      ],
    ),
    GetPage(
      name: computerGameScreen,
      page: () => ComputerGameScreen(),
      bindings: [
        ComputerGameBinding(),
      ],
    ),
    GetPage(
      name: exitThreeScreen,
      page: () => ExitThreeScreen(),
      bindings: [
        ExitThreeBinding(),
      ],
    ),
    GetPage(
      name: passNPlayScreen,
      page: () => PassNPlayScreen(),
      bindings: [
        PassNPlayBinding(),
      ],
    ),
    GetPage(
      name: passNPlayOneScreen,
      page: () => PassNPlayOneScreen(),
      bindings: [
        PassNPlayOneBinding(),
      ],
    ),
    GetPage(
      name: passNPlayTwoScreen,
      page: () => PassNPlayTwoScreen(),
      bindings: [
        PassNPlayTwoBinding(),
      ],
    ),
    GetPage(
      name: passNPlayThreeScreen,
      page: () => PassNPlayThreeScreen(),
      bindings: [
        PassNPlayThreeBinding(),
      ],
    ),
    GetPage(
      name: passNPlayFourScreen,
      page: () => PassNPlayFourScreen(),
      bindings: [
        PassNPlayFourBinding(),
      ],
    ),
    GetPage(
      name: passNPlayGameScreen,
      page: () => PassNPlayGameScreen(),
      bindings: [
        PassNPlayGameBinding(),
      ],
    ),
    GetPage(
      name: exitTwoScreen,
      page: () => ExitTwoScreen(),
      bindings: [
        ExitTwoBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
