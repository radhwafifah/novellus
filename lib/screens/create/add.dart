import 'package:flutter/material.dart';
import 'package:novellus1/screens/create/create.dart';

class AddStory extends StatefulWidget {
  @override
  State<AddStory> createState() => _AddStoryState();
}

class _AddStoryState extends State<AddStory> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      size: 30,
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Create()));
                    },
                  ),
                  Text(
                    "Buat Cerita",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          "Tambahkan Sampul Buku Cerita :",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                          Container(
                            width: 450,
                            height: 175,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.6),
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                          color: Colors.blue.shade300,
                          width: 1.0,
                        ),
                                ),
                                child: IconButton(
                                  icon: 
                                  Icon(Icons.add_a_photo_outlined, color: Colors.blue.shade300, size: 40,),
                                  onPressed: () {},
                                ),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      "Judul Buku :",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Masukkan Judul Buku",
                        hintStyle:
                            TextStyle(fontSize: 16, color: Color(0xFFB4B4B4)),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 17),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Masukkan Deskripsi Buku",
                        hintStyle:
                            TextStyle(fontSize: 16, color: Color(0xFFB4B4B4)),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 17),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 300,
              ),
              ButtonTheme(
                child: Container(
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.all(20),
                  child: ButtonTheme(
                    child: Container(
                      width: 100,
                      height: 50,
                      child: FloatingActionButton(
                        backgroundColor: Color(0xFFA9C6D1),
                        onPressed: () {
                          showModalBottomSheet(
                              elevation: 0,
                              enableDrag: true,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(40),
                                      topRight: Radius.circular(40))),
                              context: context,
                              builder: (BuildContext context) {
                                return SizedBox(
                                  height: 500,
                                  child: Center(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Text(
                                          "Tambahkan",
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Divider(),
                                        Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Column(
                                            children: [
                                              ListTile(
                                                leading: TextButton(
                                                  onPressed: () {},
                                                  child: Text(
                                                    "Kategori",
                                                    style: TextStyle(
                                                      fontSize: 23,
                                                    ),
                                                  ),
                                                ),
                                                title: Text(
                                                  "Informasi ini membantu kami lebih memahami ceritamu!",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      color: Colors.black54),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Divider(),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Column(
                                            children: [
                                              ListTile(
                                                leading: TextButton(
                                                  onPressed: () {},
                                                  child: Text(
                                                    "Genreee",
                                                    style: TextStyle(
                                                      fontSize: 23,
                                                    ),
                                                  ),
                                                ),
                                                title: Text(
                                                  "Informasi ini membantu kami lebih memahami ceritamu!",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      color: Colors.grey),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Divider(),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Row(
                                            children: [
                                              Checkbox(
                                                  value: isChecked,
                                                  onChanged: (bool? newValue) {
                                                    isChecked = newValue!;
                                                  }),
                                              Column(
                                                children: [
                                                  Text(
                                                    "Ini adalah murni hasil karya saya sendiri.",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color: Colors.grey),
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text(
                                                    "Pelanggaran hak cipta dapat menyebabkan",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color: Colors.grey),
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text(
                                                    "penghapusan cerita atau penutupan akun.",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color: Colors.grey),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Divider(),
                                            ],
                                          ),
                                        ),
                                        ButtonTheme(
                                          child: Container(
                                            alignment: Alignment.bottomRight,
                                            margin: EdgeInsets.all(20),
                                            child: ButtonTheme(
                                              child: Container(
                                                width: 100,
                                                height: 50,
                                                child: FloatingActionButton(
                                                  backgroundColor:
                                                      Color(0xFFA9C6D1),
                                                  onPressed: () {},
                                                  child: Text(
                                                    "Lanjut",
                                                    style:
                                                        TextStyle(fontSize: 17),
                                                  ),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              });
                        },
                        child: Text(
                          "Lanjut",
                          style: TextStyle(fontSize: 17),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
