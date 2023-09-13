import 'package:get/get.dart';
import 'package:novellus1/common/bindings/bar_binding.dart';
import 'package:novellus1/screens/auth/bindings/auth_bindings.dart';
import 'package:novellus1/screens/auth/register.dart';
import 'package:novellus1/screens/bar.dart';
import 'package:novellus1/screens/book/bindings/book_binding.dart';
import 'package:novellus1/screens/book/book.dart';
import 'package:novellus1/screens/create/add.dart';
import 'package:novellus1/screens/create/add3.dart';
import 'package:novellus1/screens/create/bindings/add3_binding.dart';
import 'package:novellus1/screens/create/bindings/add_binding.dart';
import 'package:novellus1/screens/create/bindings/chapters_binding.dart';
import 'package:novellus1/screens/create/bindings/create_binding.dart';
import 'package:novellus1/screens/create/chapters.dart';
import 'package:novellus1/screens/create/create.dart';
import 'package:novellus1/screens/auth/login.dart';
import 'package:novellus1/screens/genre.dart';
import 'package:novellus1/screens/history/bindings/history_binding.dart';
import 'package:novellus1/screens/history/history.dart';
import 'package:novellus1/screens/home/bindings/home_binding.dart';
import 'package:novellus1/screens/home/home.dart';
import 'package:novellus1/screens/library/bindings/library_binding.dart';
import 'package:novellus1/screens/library/library.dart';
import 'package:novellus1/screens/notifications.dart';
import 'package:novellus1/screens/profil/account.dart';
import 'package:novellus1/screens/profil/info.dart';
import 'package:novellus1/screens/profil/publish.dart';
import 'package:novellus1/screens/profil/settings.dart';
import 'package:novellus1/screens/read/bindings/read_binding.dart';
import 'package:novellus1/screens/read/read.dart';
import 'package:novellus1/screens/search.dart';
import 'package:novellus1/screens/splash_screen/bindings/splash_binding.dart';
import 'package:novellus1/screens/intro/intro.dart';
import 'package:novellus1/screens/splash_screen/splash_screen.dart';
import 'package:novellus1/screens/profil/profil.dart';
import 'package:novellus1/screens/terbit/bindings/terbit_binding.dart';
import 'package:novellus1/screens/terbit/terbit.dart';

class AppRoutes {
  static const initial = "/splash_screen";

  static final routes = [
    GetPage(
      name: '/splash_screen',
      page: () => SplashScreen(),
      binding: SplashBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(name: '/intro', page: () => intro()),
    GetPage(name: '/profil', page: () => Profil()),
    GetPage(name: '/info', page: () => Info()),
    GetPage(name: '/account', page: () => Account()),
    GetPage(name: '/publish', page: () => Publish()),
    GetPage(name: '/settings', page: () => Settings()),
    GetPage(name: '/create', page: () => Create(), binding: CreateBinding()),
    GetPage(name: '/add', page: () => AddStory(), binding: AddBinding()),
    GetPage(name: '/add3', page: () => AddStory3(), binding: Add3Binding()),
    GetPage(name: '/chapters', page: () => Chapters(), binding: ChaptersBinding()),
    GetPage(
      name: '/login',
      page: () => Login(),
      binding: AuthBinding(),
    ),
    GetPage(name: '/home', page: () => Home(), binding: HomeBinding()),
    GetPage(name: '/register', page: () => Register(), binding: AuthBinding()),
    GetPage(name: '/bar', page: () => Bar(), binding: BarBinding()),
    GetPage(name: '/book', page: () => Book(), binding: BookBinding()),
    GetPage(name: '/genre', page: () => Genre()),
    GetPage(name: '/history', page: () => History(), binding: HistoryBinding()),
    GetPage(name: '/library', page: () => Library(), binding: LibraryBinding()),
    GetPage(name: '/notif', page: () => Notif()),
    GetPage(name: '/read', page: () => Read(), binding: ReadBinding()),
    GetPage(name: '/search', page: () => Search()),
    GetPage(name: '/terbit', page: () => Terbit(), binding: TerbitBinding()),
  ];
}
