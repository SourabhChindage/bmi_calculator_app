import 'package:bmi_calculator_app/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI Calculator',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: splash_Screen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var inController = TextEditingController();
  var result = " ";
  var bgcolor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Gradient background
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.red.shade100, Colors.pink.shade50],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),

          // Left side
          Positioned(
            top: 100,
            left: -30,
            child: Transform.rotate(
              angle: 0.5,
              child: Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
          ),
          Positioned(
            top: 200,
            left: -20,
            child: Transform.rotate(
              angle: -0.5,
              child: Container(
                height: 120,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),

          // Right side
          Positioned(
            top: 220,
            right: -30,
            child: Transform.rotate(
              angle: -0.5,
              child: Container(
                height: 90,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.12),
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
            ),
          ),
          Positioned(
            top: 300,
            right: -20,
            child: Transform.rotate(
              angle: 0.7,
              child: Container(
                height: 110,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.08),
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
            ),
          ),

          // Foreground content (scrollable)
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Logo + Title
                // Top Section (Logo + Title with soft dark shade background)
                Container(
                  width: double.infinity,
                  height: 100,
                  padding: const EdgeInsets.symmetric(vertical: 20), // spacing from top
                  decoration: BoxDecoration(
                    color: Colors.orange.shade200.withOpacity(0.5), // soft dark shade

                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: Image.asset("assets/images/logo3.png"),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        "BMI Calculator",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black, // white text looks cleaner on dark bg
                        ),
                      ),
                    ],
                  ),
                ),


                // Points Section
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Find your BMI now !",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: const [
                          Icon(Icons.check_circle, color: Colors.green, size: 20),
                          SizedBox(width: 8),
                          Text("Ensure proper diet"),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: const [
                          Icon(Icons.check_circle, color: Colors.green, size: 20),
                          SizedBox(width: 8),
                          Text("Maintain Regular exercise"),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: const [
                          Icon(Icons.check_circle, color: Colors.green, size: 20),
                          SizedBox(width: 8),
                          Text("Avoid fast food"),
                        ],
                      ),
                    ],
                  ),
                ),

                // Card Section
                Center(
                  child: Container(
                    margin: const EdgeInsets.all(20),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.7), // semi-transparent background
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 8,
                          spreadRadius: 2,
                          offset: const Offset(2, 4), // shadow position
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          "Check Your BMI",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 20),

                        // Weight
                        TextField(
                          controller: wtController,
                          decoration: InputDecoration(
                            labelText: "Enter Weight (kg)",
                            prefixIcon: const Icon(Icons.monitor_weight, color: Colors.black),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                            filled: true,
                            fillColor: Colors.deepPurple.shade50,
                          ),
                          keyboardType: TextInputType.number,
                        ),
                        const SizedBox(height: 15),

                        // Height Feet
                        TextField(
                          controller: ftController,
                          decoration: InputDecoration(
                            labelText: "Enter Height (feet)",
                            prefixIcon: const Icon(Icons.height, color: Colors.black),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                            filled: true,
                            fillColor: Colors.deepPurple.shade50,
                          ),
                          keyboardType: TextInputType.number,
                        ),
                        const SizedBox(height: 15),

                        // Height Inch
                        TextField(
                          controller: inController,
                          decoration: InputDecoration(
                            labelText: "Enter Height (inch)",
                            prefixIcon: const Icon(Icons.straighten, color: Colors.black),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                            filled: true,
                            fillColor: Colors.deepPurple.shade50,
                          ),
                          keyboardType: TextInputType.number,
                        ),
                        const SizedBox(height: 20),

                        // Calculate Button
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepPurple,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 14),
                          ),
                          onPressed: () {
                            var wt = wtController.text.toString();
                            var ft = ftController.text.toString();
                            var inch = inController.text.toString();

                            if (wt.isNotEmpty && ft.isNotEmpty && inch.isNotEmpty) {
                              var iwt = int.parse(wt);
                              var ift = int.parse(ft);
                              var iinch = int.parse(inch);

                              var tinch = (ift * 12) + iinch;
                              var tCm = tinch * 2.54;
                              var tM = tCm / 100;

                              var bmi = iwt / (tM * tM);

                              var msg = "";
                              if (bmi > 25) {
                                msg = "You are Overweight 😟";
                                bgcolor = Colors.red.shade200;
                              } else if (bmi < 18) {
                                msg = "You are Underweight 😥";
                                bgcolor = Colors.orange.shade200;
                              } else {
                                msg = "You are Healthy 🎉";
                                bgcolor = Colors.green.shade200;
                              }

                              setState(() {
                                result = "$msg\nYour BMI is: ${bmi.toStringAsFixed(2)}";
                              });
                            } else {
                              setState(() {
                                result = "⚠️ Please enter all fields";
                                bgcolor = Colors.yellow.shade200;
                              });
                            }
                          },
                          child: const Text(
                            "CALCULATE",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                        ),
                        const SizedBox(height: 20),

                        // Result
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 400),
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: bgcolor,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            result,
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ),
                )

              ],
            ),
          ),
        ],
      ),
    );
  }
}
