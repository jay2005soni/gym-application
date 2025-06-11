import 'package:flutter/material.dart';
import 'package:gym_application/weekly_goal.dart';

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
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 10.0,
                  left: 16.0,
                ), // Adjust padding as needed
                child: Align(
                  alignment: Alignment.topLeft,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context); // Go back to the previous screen
                    },
                    child: const Text(
                      "Back",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10.0,
                  left: 250.0,
                ), // Adjust padding as needed
                child: Align(
                  alignment: Alignment.topLeft,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context); // Go back to the previous screen
                    },
                    child: const Text(
                      "Skip",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Image.asset("assets/images/gender.png", fit: BoxFit.fitHeight),
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
                Column(
                  children: [
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
                  ],
                ),
                SizedBox(width: 150),
                Image.asset("assets/images/boygym.jpg", height: 250, width: 70),
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
                  style: TextStyle(
                    color: Color.fromARGB(255, 240, 238, 236),
                    fontSize: 16,
                  ),
                ),

                // Optional: Add another checkbox here for "Female"
              ],
            ),
          ),
          SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => WeeklyGoal()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 218, 218, 4),
              padding: const EdgeInsets.symmetric(
                horizontal: 150,
                vertical: 15,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: Text(
              "Next",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
