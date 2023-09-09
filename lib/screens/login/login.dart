import 'package:flutter/material.dart';
import 'package:novellus1/resources/snackbar_extension.dart';
import 'package:novellus1/screens/home.dart';
import 'package:novellus1/screens/login/forgot_pass.dart';
import 'package:novellus1/screens/login/register.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:novellus1/common/utils/common.dart';

class Login extends StatefulWidget {
  @override
  _Login createState() => _Login();
}

class _Login extends State<Login> {
  bool _obscureText = true;
  bool _isLoading = false;
  final supabase = Supabase.instance.client;
  late TextEditingController _usernameController;
  late TextEditingController _passwordController;
  GlobalKey<FormState> _formKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _usernameController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _signIn() async {
    final isValid = _formKey.currentState?.validate();

    if (isValid != null && isValid) {

      setState(() {
        _isLoading = true;
      });

      try {
        await supabase.auth.signInWithPassword(
        email: _usernameController.text,
        password: _passwordController.text,
        );

        setState(() {
          _isLoading = false;
        });

        _navigateToHomePage();

      } on AuthException catch (e) {
        context.showSnackBar(message: e.message, backgroundColor: Colors.red);
        setState(() {
          _isLoading = false;
        });
      }
      catch (e) {
        context.showSnackBar(message: e.toString(), backgroundColor: Colors.red);
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  void _navigateToHomePage() {
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) => Home()), (route) => false);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          key: _formKey,
            padding: const EdgeInsets.all(25),
            child: ListView(
              children: [

                if (_isLoading)... [
                  const Center(
                    child: CircularProgressIndicator.adaptive(),
                  )
                ],

                const SizedBox(
                  height: 80,
                ),
                const Column(
                  children: [
                    Text(
                      "Hello!",
                      style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                  height: 10,
                ),
                Text(
                  "Selamat datang kembali!",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w300),
                ),
                  ],
                ),
                const SizedBox(height: 170),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      "Username",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF777777)),
                    ),
                    const SizedBox(height: 8),
                    Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: TextFormField(
                          validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'username is empty';
                                  }
                                  final isValid = RegExp(r'^[A-Za-z0-9_]{3,24}$').hasMatch(value);
                                  if (!isValid) {
                                    return '3-24 long with alphanumeric or underscore';
                                  }
                                  return null;
                                },
                          controller: _usernameController,
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Masukkan username",
                              hintStyle: TextStyle(
                                  fontSize: 15, color: Color(0xFFB4B4B4)),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 17)),
                        )),
                    const SizedBox(height: 30),
                    const Text(
                      "Password",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF777777)),
                    ),
                    const SizedBox(height: 8),
                    _isLoading ? const Center(
                      child: CircularProgressIndicator(),
                    )
                    : Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: TextFormField(
                        validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Required';
                        }
                        if (value.length < 6) {
                          return ' password length must be 6 char or more';
                        }
                        return null;
                      },
                          controller: _passwordController,
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Masukkan Password",
                          hintStyle:
                              const TextStyle(fontSize: 15, color: Color(0xFFB4B4B4)),
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 16, vertical: 17),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                            child: Icon(
                              _obscureText
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 12,
                          height: 9,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ],
                    ),
                    GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => ForgotPass()));
                    },
                    child: const Text(
                      "Lupa Kata Sandi?",
                      style: TextStyle(fontSize: 15, color: Colors.blue),
                    ),
                  )
                  ],
                ),
                const SizedBox(height: 70),
                Container(
                    width: double.infinity,
                    height: 48,
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    child: FilledButton(
                      style: FilledButton.styleFrom(
                        backgroundColor: const Color(0xFFA9C6D1),
                      ),
                      onPressed: () async {
                        final isValid = _formKey.currentState?.validate();
                        if (isValid != true) {
                          return;
                        }
                        setState(() {
                          _isLoading = true;
                        });
                        try {
                          await client.auth.signInWithPassword(
                            email: _usernameController.text,
                            password: _passwordController.text
                          );
                        } catch (e) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Login Gagal'),
                            backgroundColor: Colors.redAccent,
                            )
                          );
                          setState(() {
                            _isLoading = false;
                          });
                        }
                      },
                      child: const Text(
                        "MASUK",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    )),
                const SizedBox(height: 40),
                Container(
                  child: const Center(
                    child: Text(
                      "   --------------- Or With ---------------   ",
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 21,
                        color: Color(0xFF777777),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ButtonTheme(
                      child: Container(
                        decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    width: 140,
                    height: 50,
                    child: FloatingActionButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/google.png", height: 20,
                            width: 20,),
                            SizedBox(width: 10,),
                          Text(
                            "Google",
                            style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  )),
                  const SizedBox(width: 50,),
                  ButtonTheme(
                      child: Container(
                        decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    width: 140,
                    height: 50,
                    child: FloatingActionButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/facebook.png", height: 25,
                            width: 25,),
                            SizedBox(width: 10,),
                          Text(
                            "Facebook",
                            style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  )),
                    const SizedBox(
                height: 20,
              ),
                  ],
                ),
                const SizedBox(height: 50,),
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Tidak punya akun ? ",
                    style: TextStyle(fontSize: 20),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Register()));
                    },
                    child: const Text(
                      "Daftar",
                      style: TextStyle(fontSize: 20, color: Colors.blue),
                    ),
                  )
                ],
              )
              ],
            )),
      ),
    );
  }
}
