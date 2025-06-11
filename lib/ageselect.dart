import 'package:flutter/material.dart';

class AgeSelect extends StatefulWidget {
  const AgeSelect({super.key});

  @override
  State<AgeSelect> createState() => _AgeSelectState();
}

class _AgeSelectState extends State<AgeSelect> {
  int age = 20;
  final int minAge = 10;
  final int maxAge = 99;

  void _onScroll(DragUpdateDetails details) {
    if (details.primaryDelta! < -5) {
      if (age < maxAge) {
        setState(() {
          age++;
        });
      }
    } else if (details.primaryDelta! > 5) {
      if (age > minAge) {
        setState(() {
          age--;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: GestureDetector(
          onVerticalDragUpdate: _onScroll,
          
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                 Image.asset(
                  'assets/images/heart.png',
                  width: 500,
                
                  fit: BoxFit.contain,
                ),
                const Text(
                  "WHAT'S YOUR AGE?",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 40),
                Text(
                  (age - 1).toString(),
                  style: const TextStyle(color: Colors.grey, fontSize: 18),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.lime, width: 2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    age.toString(),
                    style: const TextStyle(color: Colors.white, fontSize: 28),
                  ),
                ),
                Text(
                  (age + 1).toString(),
                  style: const TextStyle(color: Colors.grey, fontSize: 18),
                ),
                const SizedBox(height: 60),
                GestureDetector(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Selected Age: $age')),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 16),
                    decoration: BoxDecoration(
                      color: Colors.limeAccent,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Got it',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 10),
                        Icon(Icons.arrow_forward),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      
    );
  }
}
