import 'package:flutter/material.dart';
import 'package:gym_application/weekly_goal.dart';

class Username extends StatelessWidget {
  const Username({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 250, 250), // 👈 Set background color here
      body: 
      
      Center(
        child:
        SingleChildScrollView(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
         children: [
            Image.asset("assets/images/pr.png"),
             const SizedBox(height: 0),
             Text("Choose a username",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                )),
                Text("This is how will see you in a class , You can  \n \t\t\t\t\t\t\t\t\t\t\t\t\t\talways change it later",style: TextStyle(),),
          SizedBox(height: 0,),
           Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
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
              ),
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: const Color(0xFFF2F2F2),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "@Jane Cooper",
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "3-15 characters. Cannot include special characters.",
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    
            const SizedBox(height: 100),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) =>  WeeklyGoal()),
    );
                // Handle button press
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 97, 224, 0),
                padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text("Continue"),
            )
            ,
            SizedBox(height: 30,),
            ElevatedButton(
              onPressed: () {
                // Handle button press
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 175, 177, 173),
                padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text("Cancel"),
            )
            ,
            
          ],
        ),)
      ),
    );
  }
}
