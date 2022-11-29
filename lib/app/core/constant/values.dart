import 'package:unicons/unicons.dart';
import '../../modules/home/views/content/certification.dart';
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
    'menu': 'Project',
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
      },
      {
        'logo_tech': 'assets/logo/firebase.svg',
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
      },
    ]
  },
  {
    'name_app': 'Atur Uang',
    'icon_project': 'assets/logo/android.svg',
    'description':
        "This application can be used to help manage daily finances, income and expenditure of users. Users can also print income and expense reports each month.",
    'link_github': 'https://github.com/aditgocendra/atur_uang',
    'image_asset': 'assets/images/project/atur_uang.png',
    'banner_asset': 'assets/images/banner/banner_atur_uang.png',
    'link_publish': null,
    'tech': [
      {
        'logo_tech': 'assets/logo/flutter.svg',
      },
    ]
  },
  {
    'name_app': 'Attendance App',
    'icon_project': 'assets/logo/android.svg',
    'description':
        "This application is a presence application for employees at a cafe, using the haversine and euclidean distance algorithms to calculate the user's distance and the specified location for attendance. Administrators can define hours and locations for attendance. Administrators can also choose which algorithm to use in the application.",
    'link_github': 'https://github.com/aditgocendra/attendance_app',
    'image_asset': 'assets/images/project/attendance_app.png',
    'banner_asset': 'assets/images/banner/banner_attendance_app.png',
    'link_publish': null,
    'tech': [
      {
        'logo_tech': 'assets/logo/android_native.svg',
      },
      {
        'logo_tech': 'assets/logo/java.svg',
      },
      {
        'logo_tech': 'assets/logo/firebase.svg',
      },
    ]
  },
  {
    'name_app': 'Student Monitoring',
    'icon_project': 'assets/logo/android.svg',
    'description':
        "This application is an application for monitoring children with special needs, which was created to make it easier for parents to develop children's learning.",
    'link_github': 'https://github.com/aditgocendra/student_monitoring',
    'image_asset': 'assets/images/project/student_monitoring.png',
    'banner_asset': 'assets/images/banner/banner_student_monitoring.png',
    'link_publish': null,
    'tech': [
      {
        'logo_tech': 'assets/logo/android_native.svg',
      },
      {
        'logo_tech': 'assets/logo/java.svg',
      },
      {
        'logo_tech': 'assets/logo/firebase.svg',
      },
    ]
  }
];

const List<Map<String, dynamic>> listProjectWebsite = [
  {
    'name_app': 'Klabels',
    'icon_project': 'assets/logo/website.svg',
    'description':
        'This application is a sales application and stock inventory at a store. there are several roles such as super admin, owner, and cashier, each role can only access features that have been set according to the rules of the role that has been set.',
    'link_github': 'https://github.com/aditgocendra/kelvin-project',
    'image_asset': 'assets/images/project/klabels.png',
    'banner_asset': 'assets/images/banner/banner_klabels.png',
    'link_publish': 'https://klabels-18583.web.app/',
    'tech': [
      {
        'logo_tech': 'assets/logo/flutter.svg',
      },
      {
        'logo_tech': 'assets/logo/firebase.svg',
      },
    ]
  },
  {
    'name_app': 'Projectka',
    'icon_project': 'assets/logo/website.svg',
    'description':
        'Applications selling goods such as cashier, users can manage transactions, manage users, manage products.',
    'link_github': 'https://github.com/aditgocendra/projectka_pos',
    'image_asset': 'assets/images/project/projectka.png',
    'banner_asset': 'assets/images/banner/banner_projectka.png',
    'link_publish': 'https://projectka-5d2fc.firebaseapp.com/',
    'tech': [
      {
        'logo_tech': 'assets/logo/flutter.svg',
      },
      {
        'logo_tech': 'assets/logo/firebase.svg',
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
      },
    ]
  },
  {
    'name_app': 'Escape The Maze',
    'icon_project': 'assets/logo/games.svg',
    'description':
        'This game is made using the godot game engine, where the aim of this game is the player has to get out of the maze by avoiding the enemies that will chase him during the game. the enemy in the game will find a way to the player who is looking for a way out and chase him, if the player is caught then the player will lose. To find the path to the player, enemy or NPC using the Jump Point Search and Basic Theta* algorithms as a comparison, if you are interested how the results of the comparison are, you can see it on my YouTube channel :)',
    'link_github': 'https://github.com/aditgocendra/Escape-The-Maze',
    'publish': true,
    'image_asset': 'assets/images/project/escape_the_maze.png',
    'banner_asset': 'assets/images/banner/banner_escape_the_maze.png',
    'link_publish':
        'https://play.google.com/store/apps/details?id=com.arkgames.mazegame',
    'tech': [
      {
        'logo_tech': 'assets/logo/godotengine.svg',
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
    'icon': UniconsLine.github,
    'url_redirect': 'https://github.com/aditgocendra',
  },
  {
    'icon': UniconsLine.linkedin,
    'url_redirect': 'https://www.linkedin.com/in/aditya-gocendra-41bb36236/',
  },
  {
    'icon': UniconsLine.instagram,
    'url_redirect': 'https://www.instagram.com/aditgocendra/',
  },
  {
    'icon': UniconsLine.facebook_f,
    'url_redirect': 'https://www.facebook.com/HunterProo',
  },
  {
    'icon': UniconsLine.youtube,
    'url_redirect': 'https://www.youtube.com/@gocen4607/featured',
  },
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
    'theme': 'Belajar Membuat Aplikasi Flutter Untuk Pemula',
    'type': 'training',
    'image': 'assets/images/certificated/cert_dicoding.png',
    'pdf': 'assets/pdf/cert_dicoding.pdf'
  },
  {
    'theme': 'Flutter Beginner Prakerja',
    'type': 'training',
    'image': 'assets/images/certificated/cert_course_net.png',
    'pdf': 'assets/pdf/cert_flutter_beginner.pdf'
  },
  {
    'theme': 'Scalable Web Service With Golang',
    'type': 'training',
    'image': 'assets/images/certificated/cert_hacktiv8.png',
    'pdf': 'assets/pdf/cert_scalable_web_service.pdf'
  },
  {
    'theme': 'Javascript With API',
    'type': 'training',
    'image': 'assets/images/certificated/cert_progate.png',
    'pdf': 'assets/pdf/cert_javascript_with_api.pdf'
  },
];

// Description
const about =
    'Assalamualaikum, Introduce my name Aditya Gocendra I am usually called Adit.\nI started learning to program an application since 2017, and now I am a freelancer.\nThe software that I usually work on is android applications, games and several times making a website.';

const recentWork =
    'These are various projects that I have worked on myself, since several years ago until now.';
