import 'package:flutter/material.dart';
import 'package:portfolio/models/project_model.dart';

//Update with colors of your choice for dp background gradient
Color kGradient1 = Colors.purple;
Color kGradient2 = Colors.pinkAccent;

String imagePath = "images/my_image.png";
String imageLink =
    "https://firebasestorage.googleapis.com/v0/b/protfolio-14f0c.appspot.com/o/1675867337137.jpeg?alt=media&token=12a8c3d8-c825-48d2-858d-41a63f5d0292";
// "https://media.licdn.com/dms/image/D4D35AQFdThndOmhxxw/profile-framedphoto-shrink_400_400/0/1681246879356?e=1683745200&v=beta&t=DwRCDeC1bk1rp8RWrEe-fLuJw7tLNKrh8LcPlI_qYy8";
//String data to modify
String name = "Mina Zarif";
String username = "M_Zarif10";

//Link to resume on Google Drive
String resumeLink =
    "https://drive.google.com/file/d/147BBldlx6iToLtdHj4jFE_kYTKDkHlQl/view?usp=sharing";
//Contact Email
String contactEmail = "mina1062016665@gmail.com";

String aboutWorkExperience = '''
Hello I am a freelancer
My name is Mina Zarif, and I am a Flutter developer with year of experience in developing mobile applications (android , ios) using Flutter.
In my current role as junior Flutter developer, I have been responsible for developing and delivering high-quality mobile applications to clients.
Some of my key skills include problem solving skill, and I am always looking for ways to improve my skills and learn new things. I believe that staying up-to-date with the latest technologies and trends is essential for delivering cutting-edge mobile applications.
''';

String aboutMeSummary = '''
I describe myself as both a competitive programmer and Flutter Developer. 
Additionally, I have a year of experience as a Mobile Application Developer, 
specializing in Flutter. My area of expertise involves creating high-performance applications that leverage the BLoC pattern and clean architecture.
Moreover, I have hands-on experience designing projects using "MVVM" and clean architecture.
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
