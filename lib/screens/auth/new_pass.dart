import 'package:flutter/material.dart';
import 'package:novellus1/screens/auth/login.dart';

class NewPass extends StatefulWidget {
  @override
  _NewPass createState() => _NewPass();
}

class _NewPass extends State<NewPass> {
  bool _obscureText = true;


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
                  "Tetapkan kata sandi baru",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                SizedBox(
              height: 10,
            ),
            Text(
              "Kami akan mengirimkan instruksi penyetelan ulang kepada Anda",
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.w300),
            ),
              ],
            ),
            const SizedBox(height: 150),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 20,),
            const Text(
                  "Kata Sandi Baru",
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
                    child: TextField(
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Masukkan kata sandi baru Anda",
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
                  ),
            const SizedBox(height: 20,),
            const Text(
                  "Konfirmasi Kata Sandi",
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
                    child: TextField(
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Konfirmasikan kata sandi baru Anda",
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
                  ),
                  const SizedBox(height: 90),
              Container(
                  width: double.infinity,
                  height: 48,
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFA9C6D1),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: const Text(
                      "Konfirmasi",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  )),
                ],
              ),
          ]
        ),
            ),
        );
  }
}
