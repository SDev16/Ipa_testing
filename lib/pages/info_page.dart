import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("About Me"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage("assets/img/sk_logo.jpg"),
                  ),
                ),
              ),

              const SizedBox(
                height: 25,
              ),
              ListTile(
                title: const Text(
                  "Name",
                  style: TextStyle(fontSize: 18),
                ),
                subtitle: Text("Legendary sk",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 12,
                    )),
                leading: Icon(Icons.person),
                // tileColor: Theme.of(context).colorScheme.tertiary,
              ),

              ListTile(
                title: const Text(
                  "Specialty",
                  style: TextStyle(fontSize: 18),
                ),
                subtitle: Text("Computer Emgineer",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 12,
                    )),
                leading: Icon(Icons.work),
                // tileColor: Theme.of(context).colorScheme.tertiary,
              ),
              const SizedBox(
                height: 15,
              ),
              //////////////////////////////! About me

              Text(
                "About Me",
                style: TextStyle(
                  fontSize: 18,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),

              //////////////////////////////! main text
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      child: Text(
                        "Am a young male student age 22 year old, goes by the name Tanue Dilan but known as legendaary sk because of the works I do\nI posses the following programming skills\n C\n C++\n Flutter for app development\n Html\n PHP for backend development",
                        style: TextStyle(
                          fontSize: 14,
                          color: Theme.of(context).colorScheme.error,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              //////////////////////////////! About me

              Text(
                "Click on any socail media platforms to",
                style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),

              Text(
                "Contact Me",
                style: TextStyle(
                  fontSize: 15,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),

              const SizedBox(
                height: 5,
              ),
              // call button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // message button

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.surface,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                            onPressed: () {
                              launchUrl(Uri.parse(
                                  "https://www.facebook.com/profile.php?id=61565155108660"));
                            },
                            icon: const Icon(
                              Icons.facebook,
                              color: Colors.blue,
                              size: 35,
                            )),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.surface,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          onPressed: () {
                            launchUrl(Uri.parse("https://wa.me/+237693721104"));
                          },
                          icon: const Icon(
                            Icons.whatshot,
                            size: 35,
                          ),
                          color: Colors.green,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.surface,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          onPressed: () {
                            launchUrl(Uri.parse("mailto:skvybez@gmail.com"));
                          },
                          icon: const Icon(
                            Icons.email,
                            size: 35,
                          ),
                          color: Colors.red,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.surface,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          onPressed: () {
                            launchUrl(Uri.parse("sms:+237693721104"));
                          },
                          icon: const Icon(
                            Icons.message,
                            size: 35,
                          ),
                          color: Colors.blueAccent,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ));
  }
}
