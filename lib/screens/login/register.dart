import 'package:flutter/material.dart';
import 'package:novellus1/resources/snackbar_extension.dart';
import 'package:novellus1/screens/login/login.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Register extends StatefulWidget {
  @override
  _Register createState() => _Register();
}

class _Register extends State<Register> {
  bool _obscureText = true;
  final supabase = Supabase.instance.client;
  bool _isLoading = false;
  late TextEditingController _emailController;
  late TextEditingController _usernameController;
  late TextEditingController _passwordController;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();

    _emailController = TextEditingController();
    _usernameController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _signUp() async {

    try {
      setState(() {
        _isLoading = true;
      });

      await supabase.auth.signUp(
        email: _emailController.text,
        password: _passwordController.text,
        data: {'username': _usernameController.text.toLowerCase()}
        );

        setState(() {
          _isLoading = false;
        });
        _navigateToLoginPage();
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

  void _navigateToLoginPage() {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) => Login()));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(25),
          child: ListView(
            key: _formKey,
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
                    "Buat Akun",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                height: 10,
              ),
              Text(
                "Buat Akun Kamu!",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.w300),
              ),
                ],
              ),
              const SizedBox(height: 140),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
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
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        controller: _emailController,
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "Masukkan email",
                            hintStyle: TextStyle(
                                fontSize: 15, color: Color(0xFFB4B4B4)),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 17)),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'email is empty';
                                  }
                                  return null;
                                }
                      )),
                      const SizedBox(height: 26,),
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
                        textInputAction: TextInputAction.next,
                        controller: _usernameController,
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "Masukkan username",
                            hintStyle: TextStyle(
                                fontSize: 15, color: Color(0xFFB4B4B4)),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 17)),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'username is empty';
                                  }
                                  final isValid = RegExp(r'^[A-Za-z0-9_]{3,24}$').hasMatch(value);
                                  if (!isValid) {
                                    return '3-24 long with alphanumeric or underscore';
                                  }
                                  return null;
                                }
                      )),
                  const SizedBox(height: 26),
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
                      keyboardType: TextInputType.visiblePassword,
                      controller: _passwordController,
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Masukkan kata sandi",
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
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Required';
                        }
                        if (value.length < 6) {
                          return ' password length must be 6 char or more';
                        }
                        return null;
                      }
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
                      backgroundColor: Color(0xFFA9C6D1),
                    ),
                    onPressed: () {
                      _isLoading ? null : _signUp();
                    },
                    child: const Text(
                      "DAFTAR",
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
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(width: 20),
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
                          Image.asset("assets/facebook.png", height: 20,
                            width: 20,),
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
              const SizedBox(height: 40,),
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Sudah punya akun ? ",
                  style: TextStyle(fontSize: 20),
                ),
                GestureDetector(
                  onTap: () {
                    _navigateToLoginPage();
                  },
                  child: const Text(
                    "Masuk",
                    style: TextStyle(fontSize: 20, color: Colors.blue),
                  ),
                )
              ],
            )
            ],
          )),
    );
  }
}
