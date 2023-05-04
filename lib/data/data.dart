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
    "https://drive.google.com/file/d/147BBldlx6iToLtdHj4jFE_kYTKDkHlQl/view?usp=sharing";
//Contact Email
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

String location = "Damanhour, Egypt";
String phone = "+201015739888";
String linkedIn = "Mina Zarif";
String linkedInLink = "https://www.linkedin.com/in/mina-zarif-03b9121ba/";
String email = contactEmail;

List<Project> projectList = [
  Project(
      name: "Movies App",
      description:
          "Movies App for providing the latest, top-rated, and suggested movies using (The Movies Data Base API).",
      link: "https://github.com/Mina-Zarif/movies"),
  Project(
      name: "E-commerce",
      description:
          "E-commerce App using Dio, collection of different types of requests like (get, post, delete, put).",
      link: "https://github.com/Mina-Zarif/shop_app"),
  Project(
      name: "Bookly",
      description:
          "Books App for reading and downloading free books using( Dio, bloc state management , MVVM architecture)",
      link: "https://github.com/Mina-Zarif/bookly"),
  Project(
      name: "Chat App",
      description:
          "Simple chat app using firebase authentication, Firesotre database, and bloc state management.",
      link: "https://github.com/Mina-Zarif/chatty")
];
