import 'package:auth/app/modules/home/views/password_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class LupaView extends GetView {
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
                padding: EdgeInsets.only(top: 50, bottom: 50),
                child: Center(
                  child: Text(
                    'Selasih',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0)),
                  boxShadow: [
                    BoxShadow(color: Color(0xFF911B29), offset: Offset(0, -15))
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Lupa Password",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Masukkan email akun yang passwordnya lupa"),
                      SizedBox(
                        height: 40,
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
                        height: 280,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.all(0),
                            backgroundColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            fixedSize: Size(327, 53)),
                        onPressed: () => Get.to(() => PasswordView()),
                        child: Ink(
                          height: MediaQuery.of(context).size.height,
                          width: 327,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                            gradient: LinearGradient(
                                colors: [Color(0xFF911B29), Color(0xFF33090F)]),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Kirim', textAlign: TextAlign.center),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(Icons.keyboard_tab),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Sudah punya akun?"),
                          TextButton(
                              onPressed: () => Get.toNamed('/home'),
                              child: Text("Login",
                                  style: TextStyle(color: Color(0xFF911B29))))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
