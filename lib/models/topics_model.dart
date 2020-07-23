import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jenniferlee/screens/dementia_screen.dart';
import 'package:jenniferlee/screens/tipSheets_screen.dart';
import 'package:jenniferlee/screens/ageFriendly_screen.dart';

class Topic {
  Topic({this.title, this.icon, this.page});

  final String title;
  final IconData icon;
  final Widget page;
}

final List<Topic> topics = <Topic>[
  Topic(title: 'DEMENTIA', icon: FontAwesomeIcons.brain, page: DementiaPage()),
  Topic(title: 'WHAT MATTERS', icon: FontAwesomeIcons.star, page: TestPage()),
  Topic(
      title: 'MEDICATION',
      icon: FontAwesomeIcons.prescriptionBottleAlt,
      page: TestPage()),
  Topic(title: 'MOBILITY', icon: FontAwesomeIcons.walking, page: TestPage()),
  Topic(title: 'MENTATION', icon: FontAwesomeIcons.brain, page: TestPage()),
  Topic(title: 'DENTAL', icon: FontAwesomeIcons.tooth, page: TestPage()),
  Topic(
      title: 'AGE-FRIENDLY HEALTH SYSTEM',
      icon: FontAwesomeIcons.handHoldingHeart,
      page: AgeFriendlyPage()),
//  Topic(
//      title: 'Nutrition',
//      icon: FontAwesomeIcons.appleAlt,
//      page: NutritionPage()),
];

final List<Topic> tipSheetsSubTopic = <Topic>[
  Topic(title: 'What Matters', icon: FontAwesomeIcons.star, page: TestPage()),
  Topic(
      title: 'Medication',
      icon: FontAwesomeIcons.prescriptionBottleAlt,
      page: TestPage()),
  Topic(title: 'Mobility', icon: FontAwesomeIcons.walking, page: TestPage()),
  Topic(title: 'Mentation', icon: FontAwesomeIcons.brain, page: TestPage()),
  Topic(title: 'Dental', icon: FontAwesomeIcons.tooth, page: TestPage())
];

class PdfTopic {
  PdfTopic({this.title, this.url});

  final String title;

//  final Widget subPage;
  final String url;
}

final List<PdfTopic> dementiaTopic = <PdfTopic>[
  PdfTopic(
      title: 'Navigating the Dementia Journey',
      url:
          'https://www.nihan.care/wp-content/uploads/2020/06/Dementia-Journey-Booklet.pdf'),
];
