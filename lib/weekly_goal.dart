import 'package:flutter/material.dart';

class WeeklyGoal extends StatefulWidget {
  const WeeklyGoal({super.key});

  @override
  State<WeeklyGoal> createState() => _WeeklyGoalState();
}

class _WeeklyGoalState extends State<WeeklyGoal> {
  String selectedDay = "4 Days";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/images/gymperson.jpg"),
            const SizedBox(height: 30),
            const Text(
              "SET YOUR WEEKLY GOAL",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: const Text(
                "We recommended 4 days in a week for\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t better result",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 30),

            // ✅ DROPDOWN SECTION
            const Text(
              'Weekly Training Days',
              style: TextStyle(color: Colors.white70, fontSize: 16),
            ),
            const SizedBox(height: 8),
            DropdownButtonFormField<String>(
              value: selectedDay,
              dropdownColor: Colors.grey[900],
              icon: const Icon(Icons.arrow_drop_down, color: Colors.yellowAccent),
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.transparent,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white38),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.yellowAccent),
                ),
              ),
              style: const TextStyle(color: Colors.white, fontSize: 16),
              items: List.generate(7, (index) {
                int day = index + 1;
                return DropdownMenuItem(
                  value: '$day Days',
                  child: Text('$day Days'),
                );
              }),
              onChanged: (value) {
                setState(() {
                  selectedDay = value!;
                });
              },
            ),

            const Text(
              'Weekly Training Days',
              style: TextStyle(color: Colors.white70, fontSize: 16),
            ),
            const SizedBox(height: 8),
            DropdownButtonFormField<String>(
              value: selectedDay,
              dropdownColor: Colors.grey[900],
              icon: const Icon(Icons.arrow_drop_down, color: Colors.yellowAccent),
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.transparent,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white38),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.yellowAccent),
                ),
              ),
              style: const TextStyle(color: Colors.white, fontSize: 16),
              items: List.generate(7, (index) {
                int day = ['monday','tuesday','wednesday','thursday','friday','saturday','sunday'][index].length;
                return DropdownMenuItem(
                  value: '$day Days',
                  child: Text('$day Days'),
                );
              }),
              onChanged: (value) {
                setState(() {
                  selectedDay = value!;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
