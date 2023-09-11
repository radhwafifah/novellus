import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:novellus1/screens/auth/controllers/auth_controller.dart';

class Register extends GetView<AuthController> {

  @override  
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(25),
          child: ListView(
            children: [
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
                        controller: controller.email,
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
                        controller: controller.username,
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
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        controller: controller.name,
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "Masukkan nama",
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
                    child: Obx(
                      () {
                        return TextFormField(
                          controller: controller.password,
                          obscureText: controller.obscureText.value,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Masukkan kata sandi",
                            hintStyle:
                                const TextStyle(fontSize: 15, color: Color(0xFFB4B4B4)),
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 16, vertical: 17),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                controller.obscureText.value = !controller.obscureText.value;
                              },
                              child: Icon(
                                controller.obscureText.value
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
                        );
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
                    onPressed: () async {
                      print("loding");
                      await controller.signup();
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
