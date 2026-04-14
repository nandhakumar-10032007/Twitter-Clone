import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [

          //  TOP SECTION
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                // PROFILE + SMALL AVATARS
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    CircleAvatar(
                      radius: 28,
                      backgroundImage: NetworkImage(
                        "https://randomuser.me/api/portraits/men/1.jpg",
                      ),
                    ),

                    Row(
                      children: [
                        smallAvatar("https://randomuser.me/api/portraits/men/2.jpg"),
                        smallAvatar("https://randomuser.me/api/portraits/women/3.jpg"),
                        smallAvatar("https://randomuser.me/api/portraits/men/4.jpg"),

                        SizedBox(width: 10),

                        CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.blue.shade50,
                          child: Icon(Icons.more_horiz,
                              size: 16, color: Colors.blue),
                        )
                      ],
                    )
                  ],
                ),

                SizedBox(height: 10),

                Text("Pixsellz",
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold)),

                Text("@pixsellz",
                    style: TextStyle(color: Colors.grey)),

                SizedBox(height: 10),

                Row(
                  children: [
                    Text("216 ",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text("Following  "),
                    Text("117 ",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text("Followers"),
                  ],
                ),
              ],
            ),
          ),

          Divider(),

          Expanded(
            child: ListView(
              children: [
                menuItem(Icons.person_outline, "Profile"),
                menuItem(Icons.list, "Lists"),
                menuItem(Icons.tag, "Topics"),
                menuItem(Icons.bookmark_border, "Bookmarks"),
                menuItem(Icons.flash_on, "Moments"),

                Divider(),

                menuItem(Icons.settings, "Settings and privacy"),
                menuItem(Icons.help_outline, "Help Center"),
              ],
            ),
          ),

          Divider(),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.lightbulb_outline, color: Colors.blue),
                Icon(Icons.qr_code_2, color: Colors.blue),
              ],
            ),
          )
        ],
      ),
    );
  }

 
  Widget smallAvatar(String url) {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: CircleAvatar(
        radius: 15,
        backgroundImage: NetworkImage(url),
      ),
    );
  }


  Widget menuItem(IconData icon, String text) {
    return ListTile(
      leading: Icon(icon, color: Colors.black),
      title: Text(text),
      onTap: () {},
    );
  }
}