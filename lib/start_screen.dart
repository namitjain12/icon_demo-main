import 'package:flutter/material.dart';
import 'package:icon_demo/questions_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  final void Function() startQuiz;

  StartScreen(this.startQuiz, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(151, 255, 255, 255),
          ),
          const SizedBox(height: 80),
           Text(
            'Learn Flutter the Fun Way',
            style: GoogleFonts.lato(
                color: const  Color.fromARGB(255, 237, 223, 252), fontSize: 24),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: const Icon(Icons.arrow_right_alt),
            onPressed: () {
              startQuiz(); 
            },
            label: const Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}
