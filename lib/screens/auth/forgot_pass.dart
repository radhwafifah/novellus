import 'package:flutter/material.dart';
import 'package:novellus1/screens/auth/login.dart';
import 'package:novellus1/screens/auth/register.dart';

class ForgotPass extends StatelessWidget {
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
                  "Lupa Password?",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                SizedBox(
              height: 10,
            ),
            Text(
              "Kami akan kirim atur ulang kata sandi kepada Anda!",
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.w300),
            ),
              ],
            ),
            const SizedBox(height: 150),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  "Email",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF777777)),
                ),
                const SizedBox(
                  height: 8,
                ),
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
                    child: const TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Enter your email",
                          hintStyle:
                              TextStyle(fontSize: 15, color: Color(0xFFB4B4B4)),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16, vertical: 17)),
                    )),
              ],
            ),
            const SizedBox(height: 100),
              Container(
                  width: double.infinity,
                  height: 48,
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  child: FilledButton(
                    style: FilledButton.styleFrom(
                      backgroundColor: const Color(0xFFA9C6D1),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Hapus Kata Sandi",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  )),
                  const SizedBox(height: 20),
              Container(
                  width: double.infinity,
                  height: 48,
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  child: FilledButton(
                    style: FilledButton.styleFrom(
                      backgroundColor: const Color(0xFFA9C6D1),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: const Text(
                      "Kembali ke Login",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  )),
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
        ),
      ),
    );
  }
}
