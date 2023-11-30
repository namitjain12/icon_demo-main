import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:icon_demo/models/answer_button.dart';
import 'package:icon_demo/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget{
  const QuestionsScreen({super.key, required this.onSelectAnswer,});

  final void Function(String answer) onSelectAnswer;
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
    
  }
}

  class _QuestionsScreenState extends State<QuestionsScreen>{
    var currentQuestionsIndex= 0;  

    void answerQuestion(String selectedAnswer){
      widget.onSelectAnswer(selectedAnswer);
      setState((){
     currentQuestionsIndex++; 
      });
      
    }
    @override
    Widget build( context){
      final currentQuestions =questions[currentQuestionsIndex]; 
  return SizedBox(
    width:double.infinity,
    child: Container(
      margin: const EdgeInsets.all(40),
      child: Column(   
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
           Text(currentQuestions.text ,style:  GoogleFonts.lato(
            color: const Color.fromARGB(255, 156, 125, 226),
            fontSize: 24,
            fontWeight: FontWeight.bold,
           ),
          textAlign: TextAlign.center,),
          const SizedBox(height: 30),
          ...currentQuestions.getShuffledAnswers().map((answer){
            return AnswerButton(answerText: answer,
             onTap:() {answerQuestion(answer);},);
          })

        ],
      ),
    ),
  );
    }
  }
