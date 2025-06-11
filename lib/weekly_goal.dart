import 'package:flutter/material.dart';

class WeeklyGoal extends StatefulWidget {
  const WeeklyGoal({super.key});

  @override
  State<WeeklyGoal> createState() => _WeeklyGoalState();
}

class _WeeklyGoalState extends State<WeeklyGoal> {
  String selectedFrequency = "4 Days";
  String selectedDay = "Monday";

  final List<String> trainingFrequencyOptions = [
    "1 Day",
    "2 Days",
    "3 Days",
    "4 Days",
    "5 Days",
    "6 Days",
    "7 Days",
  ];

  final List<String> weekdayOptions = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/gymperson.jpg",
              ), // Update the image name if needed
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
              const Center(
                child: Text(
                  "We recommend 4 days a week for\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t better results",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 30),

              /// FIRST DROPDOWN: Frequency
              const Text(
                'Training Frequency',
                style: TextStyle(color: Colors.white70, fontSize: 16),
              ),
              const SizedBox(height: 8),
              DropdownButtonFormField<String>(
                value: selectedFrequency,
                dropdownColor: Colors.grey[900],
                icon: const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.yellowAccent,
                ),
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
                items:
                    trainingFrequencyOptions.map((day) {
                      return DropdownMenuItem(value: day, child: Text(day));
                    }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedFrequency = value!;
                  });
                },
              ),

              const SizedBox(height: 20),

              /// SECOND DROPDOWN: Specific Day
              const Text(
                'Start Day of the Week',
                style: TextStyle(color: Colors.white70, fontSize: 16),
              ),
              const SizedBox(height: 8),
              DropdownButtonFormField<String>(
                value: selectedDay,
                dropdownColor: Colors.grey[900],
                icon: const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.yellowAccent,
                ),
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
                items:
                    weekdayOptions.map((day) {
                      return DropdownMenuItem(value: day, child: Text(day));
                    }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedDay = value!;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
