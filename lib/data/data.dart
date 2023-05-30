import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/models/project_model.dart';

//Update with colors of your choice for dp background gradient
Color kGradient1 = Colors.purple;
Color kGradient2 = Colors.pinkAccent;

late Uint8List imageData;
String imagePath = "images/my_image.png";
String imageLink =
    "https://firebasestorage.googleapis.com/v0/b/protfolio-14f0c.appspot.com/o/1675867337137.jpeg?alt=media&token=12a8c3d8-c825-48d2-858d-41a63f5d0292";
String name = "Mina Zarif";
String username = "M_Zarif10";

//Link to resume on Google Drive
String resumeLink =
    "https://drive.google.com/file/d/1I0mFqgmzXj-CVUR2KgVrm-tyG44pkpgQ/view?usp=sharing"; //Contact Email
String contactEmail = "mina1062016665@gmail.com";

String aboutWorkExperience = '''
As a Flutter developer,
I have experience in developing high-quality mobile applications for both Android and iOS platforms.
In my current role, I have successfully delivered several mobile applications that meet the requirements and expectations of clients.
My portfolio highlights my expertise in problem-solving and my eagerness to continuously learn and enhance my skills.
I believe in keeping up-to-date with the latest advancements and trends in mobile app development, as it helps me to deliver innovative and cutting-edge solutions.
''';

String aboutMeSummary = '''
I'm a Computer Science student at Damanhour University,
I have gained 2 years of experience as a Software Engineer,
with a specialization in Flutter. My focus is on creating high-performance applications that utilize the BLoC pattern and clean architecture.
I have extensive experience designing projects using MVVM and clean architecture.
''';

String location = "Alex ,Egypt";
String phone = "+201015739888";
String linkedIn = "Mina Zarif";
String linkedInLink = "https://www.linkedin.com/in/mina-zarif-03b9121ba/";
String locationLink =
    "https://www.google.com/maps?q=alexandria&um=1&ie=UTF-8&sa=X&ved=2ahUKEwjKouXP4oT_AhUO5KQKHZF_AJwQ_AUoAXoECAEQAw";
String email = contactEmail;

List<Project> projectList = [
  Project(
    name: "RGB Pixels Calculator",
    description:
        "Developed an application that employs advanced facial detection algorithms to accurately identify faces and subsequently compute",
    link: "https://github.com/Mina-Zarif/RGB-Pixels-Calculator",
  ),
  Project(
    name: "E-commerce",
    description:
        "An e-commerce application that employs Dio for network requests, including various types such as GET, POST, DELETE, and PUT, along with bloc state management to facilitate seamless functionality and user experience. ",
    link: "https://github.com/Mina-Zarif/shop_app",
  ),
  Project(
    name: "Cinema App",
    description:
        "A Movies App that utilizes The Movies Database API, Dio for integration, Sqlite local storage, and bloc state management to deliver the most recent, top-rated, and recommended movies to users.",
    link: "https://github.com/Mina-Zarif/movies",
  ),
  Project(
    name: "Bookly",
    description:
        "n application for reading and downloading books that utilize Dio, bloc state management, and MVVM architecture to offer a collection of free books. ",
    link: "https://github.com/Mina-Zarif/bookly",
  ),
  Project(
    name: "Chat App",
    description:
        "A straightforward chat application that incorporates Firebase Authentication for user authentication, Firestore database for storing chat data, and bloc state management to ensure smooth communication and user interactions..",
    link: "https://github.com/Mina-Zarif/chatty",
  ),
  Project(
    name: "Note It",
    description:
        "A basic notes application that integrates Firebase Authentication for user authentication, Firestore database for storing note data, and bloc state management to facilitate seamless note management and user experience.",
    link: "https://github.com/Mina-Zarif/notes",
  ),
];
