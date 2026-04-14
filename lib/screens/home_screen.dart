import 'package:flutter/material.dart';
import 'profile_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      drawer: SizedBox(
        width: MediaQuery.of(context).size.width * 0.80,
        child: Drawer(
          child: ProfileScreen(),
        ),
      ),

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,

        leading: Builder(
          builder: (context) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://randomuser.me/api/portraits/men/1.jpg",
                ),
              ),
            ),
          ),
        ),

        title: Icon(Icons.flutter_dash, color: Colors.blue),

        actions: [
          Icon(Icons.auto_awesome, color: Colors.blue),
          SizedBox(width: 10),
        ],
      ),

      body: ListView(
        children: [
          tweetTile(
            name: "Martha Craig",
            username: "@craig_love",
            time: "12h",
            content:
                "UXR/UX: You can only bring one item to a remote island...",
            profileImage:
                "https://randomuser.me/api/portraits/women/1.jpg",
            actionText: "Kieron Dotson and Zack John liked",
          ),

          tweetTile(
            name: "Maximilian",
            username: "@maxjacobson",
            time: "3h",
            content: "Y'all ready for this next post?",
            profileImage:
                "https://randomuser.me/api/portraits/men/2.jpg",
            actionText: "Zack John liked",
          ),

          tweetTile(
            name: "Tabitha Potter",
            username: "@mis_potter",
            time: "14h",
            content:
                "Kobe’s passing is really sticking with me...",
            profileImage:
                "https://randomuser.me/api/portraits/women/3.jpg",
            actionText: "Kieron Dotson Retweeted",
          ),

          tweetTile(
            name: "Karenne",
            username: "@karenne",
            time: "10h",
            content:
                "Name a show where the lead character is the worst character...",
            profileImage:
                "https://randomuser.me/api/portraits/women/4.jpg",
            actionText: "Zack John liked",
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {},
        child: Icon(Icons.edit),
      ),
    );
  }

  Widget tweetTile({
    required String name,
    required String username,
    required String time,
    required String content,
    String? profileImage,
    String? actionText,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          if (actionText != null)
            Padding(
              padding: const EdgeInsets.only(left: 40, bottom: 5),
              child: Row(
                children: [
                  Icon(Icons.favorite, size: 14, color: Colors.grey),
                  SizedBox(width: 5),
                  Text(actionText,
                      style:
                          TextStyle(color: Colors.grey, fontSize: 12)),
                ],
              ),
            ),

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              CircleAvatar(
                radius: 22,
                backgroundImage: NetworkImage(profileImage!),
              ),
              

              SizedBox(width: 10),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Row(
                      children: [
                        Text(name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold)),
                        SizedBox(width: 5),
                        Text("$username · $time",
                            style:
                                TextStyle(color: Colors.grey)),
                      ],
                    ),

                    SizedBox(height: 5),

                    Text(content),

                    SizedBox(height: 10),

                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.chat_bubble_outline,
                            size: 18, color: Colors.grey),
                        Icon(Icons.repeat,
                            size: 18, color: Colors.grey),
                        Icon(Icons.favorite_border,
                            size: 18, color: Colors.grey),
                        Icon(Icons.share,
                            size: 18, color: Colors.grey),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),

          SizedBox(height: 5),

          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Text(
              "Show this thread",
              style:
                  TextStyle(color: Colors.blue, fontSize: 13),
            ),
          )
        ],
      ),
    );
  }
}