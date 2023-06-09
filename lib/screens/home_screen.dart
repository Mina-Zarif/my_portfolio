import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/data/data.dart';
import 'package:portfolio/screens/widgets/project_widget.dart';
import 'package:portfolio/utils/extensions.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: const [
            Icon(
              Icons.circle_sharp,
              size: 12,
              color: Colors.black,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Flutter Developer",
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    kGradient1,
                    kGradient2,
                  ],
                ),
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(imageLink),
                  ),
                ),
              ),
            ),
            Center(
              child: Text(
                name,
                style: kTitleText,
              ),
            ),
            Center(
              child: InkWell(
                onTap: () async {
                  final Uri url = Uri.parse("https://twitter.com/$username");
                  await launchUrl(url);
                },
                child: Text(
                  "@$username",
                  style: kSubTitleText,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () async {
                    //Code to launch resume
                    final Uri url = Uri.parse(resumeLink);
                    await launchUrl(url);
                  },
                  child: Text(
                    "View Resume",
                    style: kSubTitleText,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () async {
                    //Call to launch email
                    final Uri emailLaunchUri = Uri(
                      scheme: 'mailto',
                      path: contactEmail,
                    );
                    await launchUrl(emailLaunchUri);
                  },
                  child: Row(
                    children: [
                      const Icon(
                        Icons.add,
                        size: 16,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Contact",
                        style: kSubTitleText.copyWith(color: Colors.white),
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: SizedBox(
                width: context.screenConstraint().width * 0.8,
                child: context.screenConstraint().width > 1200
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Experience",
                                  style: kSectionTitleText,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(aboutWorkExperience),
                                const Divider(),
                                Text("About Me", style: kSectionTitleText),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(aboutMeSummary),
                              ],
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Column(
                              children: [
                                Card(
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 20, horizontal: 40),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Location",
                                            style: kSubTitleText,
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          InkWell(
                                            onTap: () async {
                                              final Uri url =
                                                  Uri.parse(locationLink);
                                              await launchUrl(url);
                                            },
                                            child: Row(
                                              children: [
                                                const Icon(
                                                  Icons.location_on_outlined,
                                                  size: 16,
                                                ),
                                                const SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  location,
                                                )
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "Phone",
                                            style: kSubTitleText,
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          InkWell(
                                            onTap: () {
                                              Clipboard.setData(ClipboardData(
                                                      text: phone))
                                                  .then((value) {
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  SnackBar(
                                                    content: Row(
                                                      children: const [
                                                        Icon(
                                                          Icons.error_outline,
                                                          color: Colors.white,
                                                        ),
                                                        SizedBox(
                                                          width: 15,
                                                        ),
                                                        Text(
                                                            "Number is copied"),
                                                      ],
                                                    ),
                                                  ),
                                                ); // -> show a notification
                                              });
                                            },
                                            child: Row(
                                              children: [
                                                Text(phone),
                                                const SizedBox(
                                                  width: 5,
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "LinkedIn",
                                            style: kSubTitleText,
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          InkWell(
                                            onTap: () async {
                                              final Uri url =
                                                  Uri.parse(linkedInLink);
                                              await launchUrl(url);
                                            },
                                            child: Row(
                                              children: [
                                                Text(linkedIn),
                                                const SizedBox(
                                                  width: 5,
                                                ),
                                                const Icon(
                                                  Icons.launch,
                                                  size: 16,
                                                )
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "Email",
                                            style: kSubTitleText,
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          InkWell(
                                            onTap: () async {
                                              //Call to launch email
                                              final Uri emailLaunchUri = Uri(
                                                scheme: 'mailto',
                                                path: contactEmail,
                                              );
                                              await launchUrl(emailLaunchUri);
                                            },
                                            child: Row(
                                              children: [
                                                Text(email),
                                                const SizedBox(
                                                  width: 5,
                                                ),
                                                const Icon(
                                                  Icons.launch,
                                                  size: 16,
                                                )
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                        ]),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Experience",
                                style: kSectionTitleText,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(aboutWorkExperience),
                              const Divider(),
                              Text("About Me", style: kSectionTitleText),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(aboutMeSummary),
                            ],
                          ),
                          Column(
                            children: [
                              Card(
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 20, horizontal: 40),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Location",
                                          style: kSubTitleText,
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        InkWell(
                                          onTap: () async {
                                            final Uri url =
                                                Uri.parse(locationLink);
                                            await launchUrl(url);
                                          },
                                          child: Row(
                                            children: [
                                              const Icon(
                                                Icons.location_on_outlined,
                                                size: 16,
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                location,
                                              )
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Phone",
                                          style: kSubTitleText,
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            Clipboard.setData(
                                                    ClipboardData(text: phone))
                                                .then((value) {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Row(
                                                    children: const [
                                                      Icon(
                                                        Icons.error_outline,
                                                        color: Colors.white,
                                                      ),
                                                      SizedBox(
                                                        width: 15,
                                                      ),
                                                      Text("Number is copied"),
                                                    ],
                                                  ),
                                                ),
                                              ); // -> show a notification
                                            });
                                          },
                                          child: Row(
                                            children: [
                                              Text(phone),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "LinkedIn",
                                          style: kSubTitleText,
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        InkWell(
                                          onTap: () async {
                                            final Uri url =
                                                Uri.parse(linkedInLink);
                                            await launchUrl(url);
                                          },
                                          child: Row(
                                            children: [
                                              Text(linkedIn),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              const Icon(
                                                Icons.launch,
                                                size: 16,
                                              )
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Email",
                                          style: kSubTitleText,
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        InkWell(
                                          onTap: () async {
                                            //Call to launch email
                                            final Uri emailLaunchUri = Uri(
                                              scheme: 'mailto',
                                              path: contactEmail,
                                            );
                                            await launchUrl(emailLaunchUri);
                                          },
                                          child: Row(
                                            children: [
                                              Text(email),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              const Icon(
                                                Icons.launch,
                                                size: 16,
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                      ]),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
              ),
            ),
            Center(
              child: SizedBox(
                width: context.screenConstraint().width * 0.8,
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: context.screenConstraint().width /
                        context.screenConstraint().height *
                        1.35,
                  ),
                  // context.screenConstraint().width > 800 ? 2 : 7 / 10),
                  itemCount: projectList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ProjectWidget(
                      projectData: projectList[index],
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
            ),
          ],
        ),
      ),
    );
  }
}
