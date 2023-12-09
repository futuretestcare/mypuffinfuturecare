import 'package:mypuffinfuturecare/presentation/trafficlighthomescreen_screen/trafficlighthomescreen_screen.dart';
import 'package:mypuffinfuturecare/presentation/trafficlighthomescreen_screen/binding/trafficlighthomescreen_binding.dart';
import 'package:mypuffinfuturecare/presentation/splash_screen/splash_screen.dart';
import 'package:mypuffinfuturecare/presentation/splash_screen/binding/splash_binding.dart';
import 'package:mypuffinfuturecare/presentation/signup_screen/signup_screen.dart';
import 'package:mypuffinfuturecare/presentation/signup_screen/binding/signup_binding.dart';
import 'package:mypuffinfuturecare/presentation/forgotpassword_screen/forgotpassword_screen.dart';
import 'package:mypuffinfuturecare/presentation/forgotpassword_screen/binding/forgotpassword_binding.dart';
import 'package:mypuffinfuturecare/presentation/initacctsetup_screen/initacctsetup_screen.dart';
import 'package:mypuffinfuturecare/presentation/initacctsetup_screen/binding/initacctsetup_binding.dart';
import 'package:mypuffinfuturecare/presentation/doctorselection_screen/doctorselection_screen.dart';
import 'package:mypuffinfuturecare/presentation/doctorselection_screen/binding/doctorselection_binding.dart';
import 'package:mypuffinfuturecare/presentation/goalselection_screen/goalselection_screen.dart';
import 'package:mypuffinfuturecare/presentation/goalselection_screen/binding/goalselection_binding.dart';
import 'package:mypuffinfuturecare/presentation/homescreen_screen/homescreen_screen.dart';
import 'package:mypuffinfuturecare/presentation/homescreen_screen/binding/homescreen_binding.dart';
import 'package:mypuffinfuturecare/presentation/accountsettings_screen/accountsettings_screen.dart';
import 'package:mypuffinfuturecare/presentation/accountsettings_screen/binding/accountsettings_binding.dart';
import 'package:mypuffinfuturecare/presentation/wellnessreport_screen/wellnessreport_screen.dart';
import 'package:mypuffinfuturecare/presentation/wellnessreport_screen/binding/wellnessreport_binding.dart';
import 'package:mypuffinfuturecare/presentation/restingheartrate_screen/restingheartrate_screen.dart';
import 'package:mypuffinfuturecare/presentation/restingheartrate_screen/binding/restingheartrate_binding.dart';
import 'package:mypuffinfuturecare/presentation/breath_screen/breath_screen.dart';
import 'package:mypuffinfuturecare/presentation/breath_screen/binding/breath_binding.dart';
import 'package:mypuffinfuturecare/presentation/skintemperature_screen/skintemperature_screen.dart';
import 'package:mypuffinfuturecare/presentation/skintemperature_screen/binding/skintemperature_binding.dart';
import 'package:mypuffinfuturecare/presentation/viewprofile_screen/viewprofile_screen.dart';
import 'package:mypuffinfuturecare/presentation/viewprofile_screen/binding/viewprofile_binding.dart';
import 'package:mypuffinfuturecare/presentation/editprofile_screen/editprofile_screen.dart';
import 'package:mypuffinfuturecare/presentation/editprofile_screen/binding/editprofile_binding.dart';
import 'package:mypuffinfuturecare/presentation/notifications_screen/notifications_screen.dart';
import 'package:mypuffinfuturecare/presentation/notifications_screen/binding/notifications_binding.dart';
import 'package:mypuffinfuturecare/presentation/settings_screen/settings_screen.dart';
import 'package:mypuffinfuturecare/presentation/settings_screen/binding/settings_binding.dart';
import 'package:mypuffinfuturecare/presentation/changelogindetails_screen/changelogindetails_screen.dart';
import 'package:mypuffinfuturecare/presentation/changelogindetails_screen/binding/changelogindetails_binding.dart';
import 'package:mypuffinfuturecare/presentation/notificationsettings_screen/notificationsettings_screen.dart';
import 'package:mypuffinfuturecare/presentation/notificationsettings_screen/binding/notificationsettings_binding.dart';
import 'package:mypuffinfuturecare/presentation/dataandstorage_screen/dataandstorage_screen.dart';
import 'package:mypuffinfuturecare/presentation/dataandstorage_screen/binding/dataandstorage_binding.dart';
import 'package:mypuffinfuturecare/presentation/livechat_screen/livechat_screen.dart';
import 'package:mypuffinfuturecare/presentation/livechat_screen/binding/livechat_binding.dart';
import 'package:mypuffinfuturecare/presentation/support_screen/support_screen.dart';
import 'package:mypuffinfuturecare/presentation/support_screen/binding/support_binding.dart';
import 'package:mypuffinfuturecare/presentation/signin_screen/signin_screen.dart';
import 'package:mypuffinfuturecare/presentation/signin_screen/binding/signin_binding.dart';
import 'package:mypuffinfuturecare/presentation/wellnessreportshare_screen/wellnessreportshare_screen.dart';
import 'package:mypuffinfuturecare/presentation/wellnessreportshare_screen/binding/wellnessreportshare_binding.dart';
import 'package:mypuffinfuturecare/presentation/changepassword_screen/changepassword_screen.dart';
import 'package:mypuffinfuturecare/presentation/changepassword_screen/binding/changepassword_binding.dart';
import 'package:mypuffinfuturecare/presentation/wellnessreportdownloaded_screen/wellnessreportdownloaded_screen.dart';
import 'package:mypuffinfuturecare/presentation/wellnessreportdownloaded_screen/binding/wellnessreportdownloaded_binding.dart';
import 'package:mypuffinfuturecare/presentation/changepasswordsuccess_screen/changepasswordsuccess_screen.dart';
import 'package:mypuffinfuturecare/presentation/changepasswordsuccess_screen/binding/changepasswordsuccess_binding.dart';
import 'package:mypuffinfuturecare/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:mypuffinfuturecare/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String trafficlighthomescreenScreen =
      '/trafficlighthomescreen_screen';

  static const String splashScreen = '/splash_screen';

  static const String signupScreen = '/signup_screen';

  static const String forgotpasswordScreen = '/forgotpassword_screen';

  static const String initacctsetupScreen = '/initacctsetup_screen';

  static const String doctorselectionScreen = '/doctorselection_screen';

  static const String goalselectionScreen = '/goalselection_screen';

  static const String homescreenScreen = '/homescreen_screen';

  static const String accountsettingsScreen = '/accountsettings_screen';

  static const String wellnessreportScreen = '/wellnessreport_screen';

  static const String restingheartrateScreen = '/restingheartrate_screen';

  static const String breathScreen = '/breath_screen';

  static const String skintemperatureScreen = '/skintemperature_screen';

  static const String viewprofileScreen = '/viewprofile_screen';

  static const String editprofileScreen = '/editprofile_screen';

  static const String notificationsScreen = '/notifications_screen';

  static const String settingsScreen = '/settings_screen';

  static const String changelogindetailsScreen = '/changelogindetails_screen';

  static const String notificationsettingsScreen =
      '/notificationsettings_screen';

  static const String dataandstorageScreen = '/dataandstorage_screen';

  static const String livechatScreen = '/livechat_screen';

  static const String supportScreen = '/support_screen';

  static const String signinScreen = '/signin_screen';

  static const String wellnessreportshareScreen = '/wellnessreportshare_screen';

  static const String changepasswordScreen = '/changepassword_screen';

  static const String wellnessreportdownloadedScreen =
      '/wellnessreportdownloaded_screen';

  static const String changepasswordsuccessScreen =
      '/changepasswordsuccess_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: trafficlighthomescreenScreen,
      page: () => TrafficlighthomescreenScreen(),
      bindings: [
        TrafficlighthomescreenBinding(),
      ],
    ),
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: signupScreen,
      page: () => SignupScreen(),
      bindings: [
        SignupBinding(),
      ],
    ),
    GetPage(
      name: forgotpasswordScreen,
      page: () => ForgotpasswordScreen(),
      bindings: [
        ForgotpasswordBinding(),
      ],
    ),
    GetPage(
      name: initacctsetupScreen,
      page: () => InitacctsetupScreen(),
      bindings: [
        InitacctsetupBinding(),
      ],
    ),
    GetPage(
      name: doctorselectionScreen,
      page: () => DoctorselectionScreen(),
      bindings: [
        DoctorselectionBinding(),
      ],
    ),
    GetPage(
      name: goalselectionScreen,
      page: () => GoalselectionScreen(),
      bindings: [
        GoalselectionBinding(),
      ],
    ),
    GetPage(
      name: homescreenScreen,
      page: () => HomescreenScreen(),
      bindings: [
        HomescreenBinding(),
      ],
    ),
    GetPage(
      name: accountsettingsScreen,
      page: () => AccountsettingsScreen(),
      bindings: [
        AccountsettingsBinding(),
      ],
    ),
    GetPage(
      name: wellnessreportScreen,
      page: () => WellnessreportScreen(),
      bindings: [
        WellnessreportBinding(),
      ],
    ),
    GetPage(
      name: restingheartrateScreen,
      page: () => RestingheartrateScreen(),
      bindings: [
        RestingheartrateBinding(),
      ],
    ),
    GetPage(
      name: breathScreen,
      page: () => BreathScreen(),
      bindings: [
        BreathBinding(),
      ],
    ),
    GetPage(
      name: skintemperatureScreen,
      page: () => SkintemperatureScreen(),
      bindings: [
        SkintemperatureBinding(),
      ],
    ),
    GetPage(
      name: viewprofileScreen,
      page: () => ViewprofileScreen(),
      bindings: [
        ViewprofileBinding(),
      ],
    ),
    GetPage(
      name: editprofileScreen,
      page: () => EditprofileScreen(),
      bindings: [
        EditprofileBinding(),
      ],
    ),
    GetPage(
      name: notificationsScreen,
      page: () => NotificationsScreen(),
      bindings: [
        NotificationsBinding(),
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
      name: changelogindetailsScreen,
      page: () => ChangelogindetailsScreen(),
      bindings: [
        ChangelogindetailsBinding(),
      ],
    ),
    GetPage(
      name: notificationsettingsScreen,
      page: () => NotificationsettingsScreen(),
      bindings: [
        NotificationsettingsBinding(),
      ],
    ),
    GetPage(
      name: dataandstorageScreen,
      page: () => DataandstorageScreen(),
      bindings: [
        DataandstorageBinding(),
      ],
    ),
    GetPage(
      name: livechatScreen,
      page: () => LivechatScreen(),
      bindings: [
        LivechatBinding(),
      ],
    ),
    GetPage(
      name: supportScreen,
      page: () => SupportScreen(),
      bindings: [
        SupportBinding(),
      ],
    ),
    GetPage(
      name: signinScreen,
      page: () => SigninScreen(),
      bindings: [
        SigninBinding(),
      ],
    ),
    GetPage(
      name: wellnessreportshareScreen,
      page: () => WellnessreportshareScreen(),
      bindings: [
        WellnessreportshareBinding(),
      ],
    ),
    GetPage(
      name: changepasswordScreen,
      page: () => ChangepasswordScreen(),
      bindings: [
        ChangepasswordBinding(),
      ],
    ),
    GetPage(
      name: wellnessreportdownloadedScreen,
      page: () => WellnessreportdownloadedScreen(),
      bindings: [
        WellnessreportdownloadedBinding(),
      ],
    ),
    GetPage(
      name: changepasswordsuccessScreen,
      page: () => ChangepasswordsuccessScreen(),
      bindings: [
        ChangepasswordsuccessBinding(),
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
