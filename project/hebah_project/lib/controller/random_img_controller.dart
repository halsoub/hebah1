import 'dart:math';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';

class RandomImgController extends ChangeNotifier {
  final _random = new Random();
  var myImg = [
    "https://img.freepik.com/premium-vector/onboarding-vectors-illustration-flat-line_220346-10173.jpg?semt=ais_hybrid",
    "https://img.freepik.com/free-vector/flat-design-business-ethics-illustration-with-people_23-2148711130.jpg?semt=ais_hybrid",
    "https://img.freepik.com/free-vector/business-people-writing-agreement-shaking-hands-tiny-man-with-magnifying-glass-researching-checklist-document-clipboard-paper-flat-vector-illustration-survey-paperwork-management-concept_74855-21676.jpg?semt=ais_hybrid",
    "https://img.freepik.com/premium-vector/concept-job-duties-responsibilities-candidates-view-job-descriptions-fill-vacancies-job-description-concept-flat-vector-illustration_923732-4933.jpg?semt=ais_hybrid"
  ];

  randomImg() {
    myImg[_random.nextInt(myImg.length)];
    notifyListeners();
  }
}
