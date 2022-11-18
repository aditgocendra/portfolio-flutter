// List Constant

import 'package:portfolio/app/modules/home/views/content/about.dart';
import 'package:portfolio/app/modules/home/views/content/contact.dart';
import 'package:portfolio/app/modules/home/views/content/education.dart';
import 'package:portfolio/app/modules/home/views/content/home.dart';
import 'package:portfolio/app/modules/home/views/content/recent_work.dart';

const List<Map<String, dynamic>> listMenu = [
  {
    'menu': 'Home',
    'content': Home(),
  },
  {
    'menu': 'About',
    'content': About(),
  },
  {
    'menu': 'Education',
    'content': Education(),
  },
  {
    'menu': 'Recent Work',
    'content': RecentWork(),
  },
  {
    'menu': 'Contact',
    'content': Contact(),
  },
];

const List<Map<String, dynamic>> listAboutMenu = [
  {
    'assets': 'assets/logo/android.svg',
  },
  {
    'assets': 'assets/logo/website.svg',
  },
  {
    'assets': 'assets/logo/games.svg',
  },
];

// Description
const about =
    'Assalamualaikum, Introduce my name Aditya Gocendra I am usually called Adit.\nI started learning to program an application since 2017, and now I am a freelancer.\nThe software that I usually work on is android applications, games and several times making a website.';

const recentWork =
    'These are various projects that I have worked on myself, since several years ago until now.';
