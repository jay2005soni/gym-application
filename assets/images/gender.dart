import 'package:flutter/material.dart';

class Gender extends StatefulWidget {
  const Gender({super.key});

  @override
  State<Gender> createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  bool isChecked = false; // Checkbox state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            Image.asset("assets/images/gymboy.jpg"),
            const SizedBox(height: 20),
            const Text(
              "WHAT IS YOUR GENDER",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 38),
            Container(
              height: 100,
              width: 320,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 17, 17, 17),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 20),
                  Column(children: [
                    Spacer(),
                    const Text(
                      " 👨🏻Male",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    const Spacer(),
                    Checkbox(
                      value: isChecked,
                      onChanged: (bool? newValue) {
                        setState(() {
                          isChecked = newValue!;
                        });
                      },
                    ),
                  ]),
                  Image.asset(
                    "assets/images/boygym.jpg",
                    height: 10,
                    width: 30,
                  ),
                  Spacer(),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 100,
              width: 320,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 17, 17, 17),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: const [
                  SizedBox(width: 20),
                  Text(
                    "👩🏻Female",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),

                  // Optional: Add another checkbox here for "Female"
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
