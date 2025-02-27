import 'package:borg_erp/widgets/custon_container.dart';
import 'package:borg_erp/widgets/show_delete_account.dart';
import 'package:borg_erp/widgets/show_dialuage.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Settings")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18.0, top: 8, right: 18.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.white),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 2.0,
                      offset: Offset(0.0, 0.1),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),

                          gradient: LinearGradient(
                            colors: [
                              Colors.blue,
                              Colors.blue.shade300,
                              Colors.blueAccent,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Text(
                            "AY",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                WidgetSpan(
                                  child: Icon(
                                    Icons.people,
                                    color: const Color.fromARGB(
                                      255,
                                      140,
                                      147,
                                      238,
                                    ),
                                    size: 24,
                                  ),
                                ),

                                TextSpan(
                                  text: '   Ziya sharma',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          RichText(
                            text: TextSpan(
                              children: [
                                WidgetSpan(
                                  child: Icon(
                                    Icons.note,
                                    color: const Color.fromARGB(
                                      255,
                                      7,
                                      167,
                                      33,
                                    ),
                                    size: 24,
                                  ),
                                ),

                                TextSpan(
                                  text: '  jobProfile',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          RichText(
                            text: TextSpan(
                              children: [
                                WidgetSpan(
                                  child: Icon(
                                    Icons.phone,
                                    color: const Color.fromARGB(
                                      255,
                                      51,
                                      63,
                                      231,
                                    ),
                                    size: 24,
                                  ),
                                ),

                                TextSpan(
                                  text: '   +91354366748',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                WidgetSpan(
                                  child: Icon(
                                    Icons.mail,
                                    color: const Color.fromARGB(
                                      255,
                                      247,
                                      243,
                                      23,
                                    ),
                                    size: 24,
                                  ),
                                ),

                                TextSpan(
                                  text: '   Ziya@gmail.com',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
              GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/changePass'),
              child: CustomContainer(
                icons: Icon(Icons.logout, color: Colors.black54),
                text: " Change Passward",
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/editProfile'),
              child: CustomContainer(
                icons: Icon(Icons.edit, color: Colors.black54),
                text: " Edit Profile",
              ),
            ),
            GestureDetector(
              onTap: () => showLogoutDialog(context),
              child: CustomContainer(
                icons: Icon(Icons.logout, color: Colors.black54),
                text: " Log out",
              ),
            ),
            GestureDetector(
              onTap: ()=>showDeleteDialog(context),
              child: CustomContainer(
                icons: Icon(Icons.delete, color: Colors.black54),
                text: "Delete Account",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
