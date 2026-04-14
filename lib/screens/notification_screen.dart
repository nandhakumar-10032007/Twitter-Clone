import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen>
    with SingleTickerProviderStateMixin {

  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text("Notifications",
            style: TextStyle(color: Colors.black)),
        actions: [
          Icon(Icons.settings, color: Colors.blue),
          SizedBox(width: 10)
        ],
      ),

      body: Column(
        children: [

         
          TabBar(
            controller: _tabController,
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.blue,
            tabs: [
              Tab(text: "All"),
              Tab(text: "Mentions"),
            ],
          ),

          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                notificationList(),
                Center(child: Text("No Mentions")),
              ],
            ),
          )
        ],
      ),

  
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {},
        child: Icon(Icons.edit),
      ),
    );
  }


  Widget notificationList() {
    return ListView(
      children: [
        notificationTile(
          name: "Saad Drusteer",
          content:
              "Are you using WordPress and migrating to JAMstack? I wrote a case study...",
          profileImage:
              "https://randomuser.me/api/portraits/men/5.jpg",
        ),

        notificationTile(
          name: "UX Upper",
          content:
              "Creating meaningful experiences: an Introduction to User Experience design...",
          profileImage:
              "https://randomuser.me/api/portraits/men/6.jpg",
        ),

        notificationTile(
          name: "Teador Van Schneider",
          content:
              "I’m always surprised how few designers are also serious gamers...",
          profileImage:
              "https://randomuser.me/api/portraits/men/7.jpg",
        ),
      ],
    );
  }

  Widget notificationTile({
  required String name,
  required String content,
  required String profileImage,
}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 14),
    decoration: BoxDecoration(
      border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Icon(Icons.auto_awesome, color: Colors.purple, size: 20),
        ),

        SizedBox(width: 10),


        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  CircleAvatar(
                    radius: 18,
                    backgroundImage: NetworkImage(profileImage),
                  ),

                  SizedBox(width: 10),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                       
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              height: 1.4,
                            ),
                            children: [
                              TextSpan(text: "In case you missed "),
                              TextSpan(
                                text: name,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(text: "'s Tweet"),
                            ],
                          ),
                        ),

                        SizedBox(height: 6),

                        
                        Text(
                          content,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[800],
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),

                
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Icon(Icons.keyboard_arrow_down,
                        color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
}