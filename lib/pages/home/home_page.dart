import 'package:flutter/material.dart';

import '../../themes/color.dart';
import '../login/input_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "คำนวนค่าขนส่ง",
                style: TextStyle(
                  color: Color(0xFF475269).withOpacity(0.8),
                  fontSize: 30,
                ),
              ),
            ),
            InputWidget(
              textHint: "ที่อยู่ต้นทาง",
              icon: Icons.aspect_ratio_sharp,
              color: darkColor,
            ),
            SizedBox(height: 15),
            InputWidget(
              textHint: "ที่อยู่ปลายทาง",
              icon: Icons.aspect_ratio_sharp,
              color: darkColor,
            ),
            SizedBox(height: 15),
            InputWidget(
              textHint: "โปรดระบุน้ำหนัก",
              icon: Icons.aspect_ratio_sharp,
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
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xFF475269).withOpacity(0.3),
                        blurRadius: 5,
                        spreadRadius: 1),
                  ],
                ),
                child: Text(
                  "ยืนยัน",
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
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
