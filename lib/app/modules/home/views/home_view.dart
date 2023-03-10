import 'package:auth/app/modules/home/views/daftar_view.dart';
import 'package:auth/app/modules/home/views/lupa_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
              height: Get.height,
              width: Get.width,
              child: Image.asset(
                'assets/Mask.png',
                fit: BoxFit.cover,
              )),
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 150, bottom: 100),
                  child: Center(
                      child: Column(
                    children: [
                      Text("SELASIH",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 64,
                              color: Colors.white)),
                      Text("Your Fun & Educative Library",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: Colors.white)),
                    ],
                  )),
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.6,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40.0),
                          topRight: Radius.circular(40.0)),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xFF911B29), offset: Offset(0, -15))
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Login dulu Yuk",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Biar bisa nikmatin semua fitur dari Selasih",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              )),
                          SizedBox(
                            height: 20,
                          ),
                          Text("Email",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              hintText: "habibdwi@gmail.com",
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              filled: true,
                              fillColor: Color(0xfff3f3f4),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Password",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                hintText: "***********",
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                filled: true,
                                fillColor: Color(0xfff3f3f4),
                                suffixIcon: Icon(Icons.visibility_off)),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(0),
                                backgroundColor: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                fixedSize: Size(327, 53)),
                            onPressed: () {},
                            child: Ink(
                              height: MediaQuery.of(context).size.height,
                              width: 327,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30.0)),
                                gradient: LinearGradient(colors: [
                                  Color(0xFF911B29),
                                  Color(0xFF33090F)
                                ]),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.login),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text('Masuk', textAlign: TextAlign.center)
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                  onPressed: () {
                                    Get.to(() => DaftarView());
                                  },
                                  child: Text(
                                    "Daftar Akun Baru",
                                    style: TextStyle(color: Colors.black),
                                  )),
                              TextButton(
                                  onPressed: () {
                                    Get.to(() => LupaView());
                                  },
                                  child: Text(
                                    "Lupa password?",
                                    style: TextStyle(color: Colors.black),
                                  )),
                            ],
                          )
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
