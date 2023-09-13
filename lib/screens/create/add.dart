import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:novellus1/screens/create/controllers/add_controller.dart';

class AddStory extends GetView<AddController> {
  bool isChecked = false;
  final AddController controller = Get.put(AddController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 30,
                    ),
                    onPressed: () {
                      Get.offNamed('/bar');
                    },
                  ),
                  const Text(
                    "Buat Cerita",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Column(
                      children: [
                        const Text(
                          "Tambahkan Sampul Buku Cerita :",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        GetBuilder<AddController>(builder: (_) {
                          return Container(
                            width: 450,
                            height: 175,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.6),
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Colors.blue.shade300,
                                width: 1.0,
                              ),
                              image: controller.image == null
                                  ? null
                                  : DecorationImage(
                                      image: FileImage(controller.image!),
                                    ),
                            ),
                            child: IconButton(
                              icon: Icon(
                                Icons.add_a_photo_outlined,
                                color: Colors.blue.shade300,
                                size: 40,
                              ),
                              onPressed: () async {
                                await controller.selectImage();
                              },
                            ),
                          );
                        }),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    const Text(
                      "Judul Buku :",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: controller.title,
                      decoration: const InputDecoration(
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
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    TextFormField(
                      controller: controller.synopsis,
                      maxLines: 6,
                      decoration: const InputDecoration(
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
              const SizedBox(
                height: 300,
              ),
              ButtonTheme(
                child: Container(
                  alignment: Alignment.bottomRight,
                  margin: const EdgeInsets.all(20),
                  child: ButtonTheme(
                    child: Container(
                      width: 100,
                      height: 50,
                      child: FloatingActionButton(
                        backgroundColor: const Color(0xFFA9C6D1),
                        onPressed: () async {
                          //     print("loding");
                          // await controller.add();
                          showModalBottomSheet(
                              elevation: 0,
                              enableDrag: true,
                              shape: const RoundedRectangleBorder(
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
                                        const Text(
                                          "Tambahkan",
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const Divider(),
                                        Padding(
                                          padding: const EdgeInsets.all(10),
                                          child: Column(
                                            children: [
                                              ListTile(
                                                leading: Obx(
                                                  () => Container(
                                                    width: 120,
                                                    height: 60,
                                                    child:
                                                        DropdownButton<String>(
                                                      value: controller
                                                          .selectedItem.value,
                                                      onChanged:
                                                          (String? newValue) {
                                                        controller.selectedItem
                                                            .value = newValue!;
                                                      },
                                                      isExpanded: true,
                                                      items: controller.items
                                                          .map((String value) {
                                                        return DropdownMenuItem<
                                                            String>(
                                                          value: value,
                                                          child: Text(value),
                                                        );
                                                      }).toList(),
                                                    ),
                                                  ),
                                                ),
                                                title: const Text(
                                                  "Informasi ini membantu kami lebih memahami ceritamu!",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      color: Colors.grey),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              const Divider(),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(10),
                                          child: Column(
                                            children: [
                                              ListTile(
                                                leading: Obx(
                                                  () => Container(
                                                    width: 120,
                                                    height: 60,
                                                    color: const Color(0xFFA9C6D1),
                                                    child:
                                                        DropdownButton<String>(
                                                      value: controller
                                                          .selectedItem2.value,
                                                      onChanged:
                                                          (String? newValue) {
                                                        controller.selectedItem2
                                                            .value = newValue!;
                                                      },
                                                      isExpanded: true,
                                                      items: controller.items2
                                                          .map((String value) {
                                                        return DropdownMenuItem<
                                                            String>(
                                                          value: value,
                                                          child: Text(value),
                                                        );
                                                      }).toList(),
                                                    ),
                                                  ),
                                                ),
                                                title: const Text(
                                                  "Informasi ini membantu kami lebih memahami ceritamu!",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      color: Colors.grey),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              const Divider(),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(10),
                                          child: Row(
                                            children: [
                                              Checkbox(
                                                  value: isChecked,
                                                  onChanged: (bool? newValue) {
                                                    isChecked = newValue!;
                                                  }),
                                              const Column(
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
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              const Divider(),
                                            ],
                                          ),
                                        ),
                                        ButtonTheme(
                                          child: Container(
                                            alignment: Alignment.bottomRight,
                                            margin: const EdgeInsets.all(20),
                                            child: ButtonTheme(
                                              child: Container(
                                                width: 100,
                                                height: 50,
                                                child: FloatingActionButton(
                                                  backgroundColor: const
                                                      Color(0xFFA9C6D1),
                                                  onPressed: () async {
                                                    print("loding");
                                                    await controller.add();
                                                  },
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
