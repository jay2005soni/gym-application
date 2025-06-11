import 'package:flutter/material.dart';
import 'package:gym_application/gender.dart';
import 'package:gym_application/weekly_goal.dart';

class Username extends StatelessWidget {
  const Username({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0), // 👈 Set background color here
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
  borderRadius: BorderRadius.circular(1000), // Set the curve radius here
  child: Image.asset(
    "assets/images/user.png",
    width: 200,
    height: 200,
    fit: BoxFit.cover,
  ),
)
            ,  const SizedBox(height: 10),
              Text(
                "Choose a username",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 255, 253, 253),
                ),
              ),
              SizedBox(height: 50,),
              Text(
                "This is how will see you in a class , You can  \n \t\t\t\t\t\t\t\t\t\t\t\t\t\talways change it later",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 100),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 37, 36, 36),
                  borderRadius: BorderRadius.circular(20),
                ),
                width: 350,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Username",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 27, 26, 26),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "@Jane Cooper",
                        hintStyle: TextStyle(color: Color.fromARGB(255, 167, 161, 161))                  ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "3-15 characters. Cannot include special characters.",
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 200),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Gender()),
                  );
                  // Handle button press
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 219, 253, 65),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 150,
                    vertical: 15,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text("Continue"),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  // Handle button press
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 175, 177, 173),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 150,
                    vertical: 15,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text("Cancel"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
