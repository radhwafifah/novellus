import 'package:flutter/material.dart';
import 'package:novellus1/screens/bar.dart';
import 'package:novellus1/screens/book.dart';
import 'package:novellus1/screens/create/add.dart';
import 'package:novellus1/screens/create/add3.dart';
import 'package:novellus1/screens/create/create.dart';
import 'package:novellus1/screens/genre.dart';
import 'package:novellus1/screens/history.dart';
import 'package:novellus1/screens/home.dart';
import 'package:novellus1/screens/intro/intro.dart';
import 'package:novellus1/screens/login/forgot_pass.dart';
import 'package:novellus1/screens/login/login.dart';
import 'package:novellus1/screens/login/new_pass.dart';
import 'package:novellus1/screens/login/register.dart';
import 'package:novellus1/screens/login/reset_pass.dart';
import 'package:novellus1/screens/library.dart';
import 'package:novellus1/screens/notifications.dart';
import 'package:novellus1/screens/profil/account.dart';
import 'package:novellus1/screens/profil/info.dart';
import 'package:novellus1/screens/profil/profil.dart';
import 'package:novellus1/screens/profil/publish.dart';
import 'package:novellus1/screens/profil/settings.dart';
import 'package:novellus1/screens/read.dart';
import 'package:novellus1/screens/search.dart';
import './screens/intro/splash_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:novellus1/common/utils/common.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://xhvtqlnylrdnwsgmawel.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InhodnRxbG55bHJkbndzZ21hd2VsIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTE0NzY3MzYsImV4cCI6MjAwNzA1MjczNn0.-B4i2NyMZCFuP3Mcgv7n9mt8_JYW2iOdeLylHlwZpY8',
  );

  runApp(MyApp());
}

final supabase = Supabase.instance.client;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Novellus',
      debugShowCheckedModeBanner: false,
      home: Bar(),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  User? _user;

  @override
  void initState() {
    _getAuth();
    super.initState();
  }

  Future<void> _getAuth() async {
    setState(() {
      _user = client.auth.currentUser;
    });
    client.auth.onAuthStateChange.listen((event) {
      setState(() {
        _user = event.session?.user;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _user == null ? Login() : Bar(),
    );
  }
}