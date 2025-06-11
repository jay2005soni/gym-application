import 'package:flutter/material.dart';
import 'weekly_goal.dart';

class Level extends StatefulWidget {
  const Level({super.key});

  @override
  State<Level> createState() => _LevelState();
}

class _LevelState extends State<Level> {
  String selectedLevel = '';

  final List<Map<String, dynamic>> fitnessLevels = [
    {'label': 'Beginner', 'icon': Icons.fitness_center},
    {'label': 'Intermediate', 'icon': Icons.directions_run},
    {'label': 'Advanced', 'icon': Icons.sports_martial_arts},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const WeeklyGoal()),
              );
            },
            child: const Text('Skip', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image section
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: const DecorationImage(
                image: AssetImage('assets/images/gymmachin.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Title
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
            child: Text(
              "WHAT’S YOUR FITNESS LEVEL?",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Aleo',
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 2),

          // Fitness level options
          ...fitnessLevels.map(
            (level) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedLevel = level['label'];
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF1C1C1E),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color:
                          selectedLevel == level['label']
                              ? Colors.yellowAccent
                              : Colors.transparent,
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 16,
                  ),
                  child: Row(
                    children: [
                      Icon(level['icon'], color: Colors.white),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Text(
                          level['label'],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Icon(
                        selectedLevel == level['label']
                            ? Icons.radio_button_checked
                            : Icons.radio_button_off,
                        color:
                            selectedLevel == level['label']
                                ? Colors.yellowAccent
                                : Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const Spacer(),

          // Next Button
          Padding(
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed:
                  selectedLevel.isNotEmpty
                      ? () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const WeeklyGoal(),
                          ),
                        );
                      }
                      : null,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellowAccent,
                foregroundColor: Colors.black,
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text('Next →', style: TextStyle(fontSize: 18)),
            ),
          ),
        ],
      ),
    );
  }
}
