import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  final String email;

  const HomeScreen({
    super.key,
    required this.email,
  });

  Widget card(
      IconData icon,
      String title,
      Color color) {

    return Container(

      width: 150,
      height: 140,

      decoration: BoxDecoration(
        color: color,
        borderRadius:
        BorderRadius.circular(20),
      ),

      child: Column(
        mainAxisAlignment:
        MainAxisAlignment.center,

        children: [

          Icon(
            icon,
            size: 40,
            color: Colors.white,
          ),

          const SizedBox(height: 10),

          Text(
            title,

            style:
            const TextStyle(
              color: Colors.white,
              fontWeight:
              FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor:
      const Color(0xffF5F7FA),

      appBar: AppBar(
        title:
        const Text("Dashboard"),
      ),

      body: Padding(

        padding:
        const EdgeInsets.all(20),

        child: Column(

          children: [

            Container(

              padding:
              const EdgeInsets.all(
                  20),

              decoration:
              BoxDecoration(

                gradient:
                const LinearGradient(
                  colors: [
                    Colors.blue,
                    Colors.purple,
                  ],
                ),

                borderRadius:
                BorderRadius.circular(
                    25),
              ),

              child: Column(

                children: [

                  const CircleAvatar(
                    radius: 35,

                    child: Icon(
                      Icons.person,
                      size: 35,
                    ),
                  ),

                  const SizedBox(
                      height: 10),

                  Text(
                    email,

                    style:
                    const TextStyle(
                      color:
                      Colors.white,
                    ),
                  ),

                  const SizedBox(
                      height: 10),

                  const Text(
                    "Welcome 👋",

                    style:
                    TextStyle(
                      fontSize: 22,

                      color:
                      Colors.white,

                      fontWeight:
                      FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            Row(

              mainAxisAlignment:
              MainAxisAlignment
                  .spaceBetween,

              children: [

                card(
                  Icons.code,
                  "Projects",
                  Colors.orange,
                ),

                card(
                  Icons.task,
                  "Tasks",
                  Colors.green,
                ),
              ],
            ),

            const SizedBox(height: 20),

            Row(

              mainAxisAlignment:
              MainAxisAlignment
                  .spaceBetween,

              children: [

                card(
                  Icons.analytics,
                  "Reports",
                  Colors.blue,
                ),

                card(
                  Icons.settings,
                  "Settings",
                  Colors.pink,
                ),
              ],
            ),

            const Spacer(),

            ElevatedButton.icon(

              onPressed: () {

                Navigator.pop(
                    context);
              },

              icon:
              const Icon(
                  Icons.logout),

              label:
              const Text(
                  "Logout"),
            ),
          ],
        ),
      ),
    );
  }
}