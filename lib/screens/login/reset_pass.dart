import 'package:flutter/material.dart';

import 'login.dart';

class ResetPass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: ListView(
            children: [
              const SizedBox(
                height: 90,
              ),
              const Column(
                children: [
                  Text(
                    "Hapus Kata Sandi",
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
              const SizedBox(height: 70),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                            width: 80,
                            height: 80,
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
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 17)
                              ),
                            ),
                  ),
                  const SizedBox(width: 15,),
                  Container(
                            width: 80,
                            height: 80,
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
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 17)
                              ),
                            ),
                  ),
                  const SizedBox(width: 15,),
                  Container(
                            width: 80,
                            height: 80,
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
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 17)
                              ),
                            ),
                  ),
                  const SizedBox(width: 15,),
                  Container(
                            width: 80,
                            height: 80,
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
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 17)
                              ),
                            ),
                  ),
                ],
              ),
            ],
                ),
                ),
                const SizedBox(height: 80),
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
                      "Kembali ke Masuk",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  )),
                  const SizedBox(height: 50,),
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Tidak menerima email tersebut?",
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(width: 5,),
                GestureDetector(
                  onTap: () {
                    
                  },
                  child: const Text(
                    "Klik untuk mengirim ulang ",
                    style: TextStyle(fontSize: 20, color: Colors.blue),
                  ),
                )
              ],
            )
          ],
          ),
        ),
      ),
    );
  }
}
