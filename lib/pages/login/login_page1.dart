import 'package:flutter/material.dart';
import 'input_widget.dart';
import 'package:shoestore/themes/color.dart';

class LoGin extends StatelessWidget {
  const LoGin({
    Key? key,
  }) : super(key: key);

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
              child: Image.asset("images/login.png"),
            ),
            InputWidget(
              textHint: "ชื่อผู้ใช้",
              icon: Icons.person,
              color: darkColor,
            ),
            SizedBox(height: 15),
            InputWidget(
              textHint: "รหัสผ่าน",
              icon: Icons.lock,
              color: darkColor,
            ),
            SizedBox(height: 15),
            Container(
              margin: EdgeInsets.only(left: 15),
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Forgot Password",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 0, 0),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),

            //เข้าสุ่ระบบ
            SizedBox(height: 40),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "homePage");
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
                  "Login",
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 2),
                ),
              ),
            ),

            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
