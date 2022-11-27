// List Constant

import 'package:portfolio/app/modules/home/views/content/certification.dart';
import 'package:unicons/unicons.dart';

import '../../modules/home/views/content/about.dart';
import '../../modules/home/views/content/contact.dart';
import '../../modules/home/views/content/education.dart';
import '../../modules/home/views/content/home.dart';
import '../../modules/home/views/content/portfolio.dart';

const List<Map<String, dynamic>> listMenu = [
  {
    'menu': 'Home',
    'icon': UniconsLine.home,
    'content': Home(),
  },
  {
    'menu': 'About',
    'icon': UniconsLine.info_circle,
    'content': About(),
  },
  {
    'menu': 'Education',
    'icon': UniconsLine.book_open,
    'content': Education(),
  },
  {
    'menu': 'Portfolio',
    'icon': UniconsLine.apps,
    'content': RecentWork(),
  },
  {
    'menu': 'Certificate',
    'icon': UniconsLine.creative_commons_pd,
    'content': Certification(),
  },
  {
    'menu': 'Contact',
    'icon': UniconsLine.envelopes,
    'content': Contact(),
  },
];

const List<Map<String, dynamic>> listProjectAndroid = [
  {
    'name_app': 'Main Market',
    'icon_project': 'assets/logo/android.svg',
    'description':
        'Main market is a marketplace application, created to make it easier for sellers to catalog goods and provide information about stores.',
    'link_github': null,
    'image_asset': 'assets/images/project/main_market.png',
    'banner_asset': 'assets/images/banner/banner_main_market.png',
    'link_publish':
        'https://play.google.com/store/apps/details?id=com.ark.main_market',
    'tech': [
      {
        'logo_tech': 'assets/logo/flutter.svg',
        'link_tech': 'https://flutter.com',
      },
      {
        'logo_tech': 'assets/logo/firebase.svg',
        'link_tech': 'https://firebase.com',
      },
    ]
  },
  {
    'name_app': 'Shipp',
    'icon_project': 'assets/logo/android.svg',
    'description':
        'Shipp is an application to check shipping costs from various shipping services, this application uses the Rajaongkir API',
    'link_github': 'https://github.com/aditgocendra/postage_app',
    'image_asset': 'assets/images/project/shipp.png',
    'banner_asset': 'assets/images/banner/banner_shipp.png',
    'link_publish':
        'https://play.google.com/store/apps/details?id=com.ark.check_postage_app',
    'tech': [
      {
        'logo_tech': 'assets/logo/flutter.svg',
        'link_tech': 'https://flutter.com',
      },
    ]
  },
  {
    'name_app': 'Student Monitoring',
    'icon_project': 'assets/logo/android.svg',
    'description':
        "This application is an application for monitoring children with special needs, which was created to make it easier for parents to develop children's learning.",
    'link_github': 'https://github.com/aditgocendra/postage_app',
    'image_asset': 'assets/images/project/student_monitoring.png',
    'banner_asset': 'assets/images/banner/banner_student_monitoring.png',
    'link_publish': null,
    'tech': [
      {
        'logo_tech': 'assets/logo/android_native.svg',
        'link_tech': 'https://flutter.com',
      },
      {
        'logo_tech': 'assets/logo/firebase.svg',
        'link_tech': 'https://firebase.com',
      },
    ]
  }
];

const List<Map<String, dynamic>> listProjectWebsite = [
  {
    'name_app': 'Klabels',
    'icon_project': 'assets/logo/website.svg',
    'description': 'this is description',
    'link_github': 'https://github.com/aditgocendra/kelvin-project',
    'image_asset': 'assets/images/project/klabels.png',
    'banner_asset': 'assets/images/banner/banner_klabels.png',
    'link_publish': 'https://klabels-18583.web.app/',
    'tech': [
      {
        'logo_tech': 'assets/logo/flutter.svg',
        'link_tech': 'https://flutter.com',
      },
      {
        'logo_tech': 'assets/logo/firebase.svg',
        'link_tech': 'https://firebase.com',
      },
    ]
  },
  {
    'name_app': 'Projectka',
    'icon_project': 'assets/logo/website.svg',
    'description': 'this is description',
    'link_github': 'https://github.com/aditgocendra/projectka_pos',
    'image_asset': 'assets/images/project/projectka.png',
    'banner_asset': 'assets/images/banner/banner_projectka.png',
    'link_publish': 'https://projectka-5d2fc.firebaseapp.com/',
    'tech': [
      {
        'logo_tech': 'assets/logo/flutter.svg',
        'link_tech': 'https://flutter.com',
      },
      {
        'logo_tech': 'assets/logo/firebase.svg',
        'link_tech': 'https://firebase.com',
      },
    ]
  }
];

const List<Map<String, dynamic>> listProjectGames = [
  {
    'name_app': 'Ninja Rusher',
    'icon_project': 'assets/logo/games.svg',
    'description': 'A game with a ninja theme and a world platformer',
    'link_github': 'https://github.com/aditgocendra/Ninja-Rusher',
    'publish': true,
    'image_asset': 'assets/images/project/ninja_rusher.png',
    'banner_asset': 'assets/images/banner/banner_ninja_rusher.png',
    'link_publish':
        'https://play.google.com/store/apps/details?id=com.arkgames.ninjarusher',
    'tech': [
      {
        'logo_tech': 'assets/logo/godotengine.svg',
        'link_tech': 'https://godot.com',
      },
    ]
  },
];

const List<Map<String, dynamic>> listAboutMenu = [
  {
    'assets': 'assets/logo/website.svg',
  },
  {
    'assets': 'assets/logo/android.svg',
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

// Education
const List<Map<String, dynamic>> listEducation = [
  {
    'from_year': '2017',
    'end_year': '2021',
    'institution': 'University Teknokrat Indonesia',
    'degree': 'Bachelor of Computer Science',
  },
  {
    'from_year': '2014',
    'end_year': '2017',
    'institution': 'SMA Negeri 3 Bandar Lampung',
    'degree': 'Senior High School',
  },
  {
    'from_year': '2011',
    'end_year': '2014',
    'institution': 'SMP Negeri 5 Bandar Lampung',
    'degree': 'Junior High School',
  },
];

// Certificated
const List<Map<String, dynamic>> listCertificated = [
  {
    'title': 'Flutter Beginner Dicoding',
    'type': 'training',
    'image': 'assets/certificated/dicoding/cert_dicoding.png'
  },
  {
    'title': 'Flutter Beginner Prakerja',
    'type': 'training',
    'image': 'assets/certificated/dicoding/cert_dicoding.png'
  },
  {
    'title': 'Flutter Beginner Prakerja',
    'type': 'training',
    'image': 'assets/certificated/dicoding/cert_dicoding.png'
  },
  {
    'title': 'Flutter Beginner Prakerja',
    'type': 'training',
    'image': 'assets/certificated/dicoding/cert_dicoding.png'
  },
];

// Description
const about =
    'Assalamualaikum, Introduce my name Aditya Gocendra I am usually called Adit.\nI started learning to program an application since 2017, and now I am a freelancer.\nThe software that I usually work on is android applications, games and several times making a website.';

const recentWork =
    'These are various projects that I have worked on myself, since several years ago until now.';
