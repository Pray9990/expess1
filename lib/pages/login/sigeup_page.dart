import 'package:flutter/material.dart';
import 'input_widget.dart';
import 'package:shoestore/themes/color.dart';

class SigeUp extends StatelessWidget {
  const SigeUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "Loginage");
                    },
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: boxDecoration,
                      child: Icon(
                        Icons.arrow_back,
                        size: 30,
                        color: darkColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "สมัครสมาชิก",
                style: TextStyle(
                  color: Color(0xFF475269).withOpacity(0.8),
                  fontSize: 30,
                ),
              ),
            ),
            InputWidget(
              textHint: "ชื่อที่ต้องการใช้",
              icon: Icons.person,
              color: darkColor,
            ),
            SizedBox(height: 15),
            InputWidget(
              textHint: "รหัสผ่านรอบที่ 1",
              icon: Icons.lock,
              color: darkColor,
            ),
            SizedBox(height: 15),
            InputWidget(
              textHint: "รหัสผ่านรอบที่ 2",
              icon: Icons.lock,
              color: darkColor,
            ),
            SizedBox(height: 50),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/");
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(horizontal: 15),
                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(
                  color: Color(0xFF475269),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xFF475269).withOpacity(0.3),
                        blurRadius: 5,
                        spreadRadius: 1),
                  ],
                ),
                child: Text(
                  "สมัคร",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
