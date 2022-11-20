// List Constant

import 'package:unicons/unicons.dart';

import '../../modules/home/views/content/about.dart';
import '../../modules/home/views/content/contact.dart';
import '../../modules/home/views/content/education.dart';
import '../../modules/home/views/content/home.dart';
import '../../modules/home/views/content/recent_work.dart';

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

const List<Map<String, dynamic>> listProjectAndroid = [
  {
    'name_app': 'Main Market',
    'architecture': 'MVVM',
    'description': 'this is description',
    'link_github': null,
    'publish': true,
    'link_publish': 'https://google.com',
    'tech': [
      {
        'logo_tech': 'assets/tech_logo/flutter.png',
        'link_tech': 'https://flutter.com',
      },
      {
        'logo_tech': 'assets/tech_logo/firebase.png',
        'link_tech': 'https://firebase.com',
      },
    ]
  },
  {
    'name_app': 'Shipp',
    'architecture': 'MVVM',
    'description': 'this is description',
    'link_github': 'https://github.com/aditgocendra/shipp',
    'publish': true,
    'link_publish': 'https://google.com',
    'tech': [
      {
        'logo_tech': 'assets/tech_logo/flutter.png',
        'link_tech': 'https://flutter.com',
      },
    ]
  }
];

const List<Map<String, dynamic>> listProjectWebsite = [
  {
    'name_app': 'Klabels',
    'architecture': 'MVC',
    'description': 'this is description',
    'link_github': null,
    'publish': true,
    'link_publish': 'https://google.com',
    'tech': [
      {
        'logo_tech': 'assets/tech_logo/flutter.png',
        'link_tech': 'https://flutter.com',
      },
      {
        'logo_tech': 'assets/tech_logo/firebase.png',
        'link_tech': 'https://firebase.com',
      },
    ]
  },
  {
    'name_app': 'Projectka',
    'architecture': 'MVC',
    'description': 'this is description',
    'link_github': 'https://github.com/aditgocendra/shipp',
    'publish': true,
    'link_publish': 'https://google.com',
    'tech': [
      {
        'logo_tech': 'assets/tech_logo/flutter.png',
        'link_tech': 'https://flutter.com',
      },
      {
        'logo_tech': 'assets/tech_logo/firebase.png',
        'link_tech': 'https://firebase.com',
      },
    ]
  }
];

const List<Map<String, dynamic>> listProjectGames = [
  {
    'name_app': 'The Maze',
    'architecture': '-',
    'description': 'this is description',
    'link_github': null,
    'publish': true,
    'link_publish': 'https://google.com',
    'tech': [
      {
        'logo_tech': 'assets/tech_logo/godot.png',
        'link_tech': 'https://godot.com',
      },
    ]
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

// Contact
const List<Map<String, dynamic>> listContact = [
  {
    'icon': UniconsLine.whatsapp,
    'url_redirect': "https://api.whatsapp.com/send?phone=08975778418",
  },
  {
    'icon': UniconsLine.telegram_alt,
    'url_redirect': "https://web.telegram.org/?legacy=1#/im?p=@aditgocendra",
  }
];

// Social Media
const List<Map<String, dynamic>> listSocialMedia = [
  {
    'icon': UniconsLine.instagram,
    'url_redirect': 'https://www.instagram.com/aditgocendra/',
  },
  {
    'icon': UniconsLine.facebook_f,
    'url_redirect': 'https://www.facebook.com/HunterProo',
  },
  {
    'icon': UniconsLine.github,
    'url_redirect': 'https://github.com/aditgocendra',
  },
  {
    'icon': UniconsLine.linkedin,
    'url_redirect': 'https://www.linkedin.com/in/aditya-gocendra-41bb36236/',
  }
];

// Description
const about =
    'Assalamualaikum, Introduce my name Aditya Gocendra I am usually called Adit.\nI started learning to program an application since 2017, and now I am a freelancer.\nThe software that I usually work on is android applications, games and several times making a website.';

const recentWork =
    'These are various projects that I have worked on myself, since several years ago until now.';
