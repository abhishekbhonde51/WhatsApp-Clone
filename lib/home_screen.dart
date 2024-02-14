import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String id = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'WhatsApp',
              ),
              backgroundColor: Colors.teal,
              bottom: const TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.camera_alt)),
                  Tab(text: 'CHATS'),
                  Tab(text: 'STATUS'),
                  Tab(text: 'CALLS'),
                ],
              ),
              actions: [
                Icon(Icons.search),
                SizedBox(width: 10),
                PopupMenuButton(
                    icon: const Icon(Icons.more_vert),
                    itemBuilder: (
                      context,
                    ) =>
                        [
                          const PopupMenuItem(
                            child: Text('New group'),
                          ),
                          const PopupMenuItem(
                            child: Text('New broadcast'),
                          ),
                          const PopupMenuItem(
                            child: Text('WhatsApp Web'),
                          ),
                          const PopupMenuItem(
                            child: Text('Starred Message'),
                          ),
                          const PopupMenuItem(
                            child: Text('Settings'),
                          ),
                        ]),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            body: TabBarView(children: [
              Text('Camera'),
              ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://avatars.githubusercontent.com/u/113115756?s=400&u=41efe0e5407a3a7ebc427052c2875cd0b0f7ac62&v=4'),
                      ),
                      title: Text('Abhishek Bhonde'),
                      subtitle: Text("Hi there! "),
                      trailing: Text('10:00 PM'),
                    );
                  }),
              Text('Chats'),
              ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://avatars.githubusercontent.com/u/113115756?s=400&u=41efe0e5407a3a7ebc427052c2875cd0b0f7ac62&v=4'),
                      ),
                      title: Text('Abhishek Bhonde'),
                      subtitle: Text("Missed call 10:00 PM"),
                      trailing: Icon(Icons.call),
                    );
                  }),
              Text('Status'),
              ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return const ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://avatars.githubusercontent.com/u/113115756?s=400&u=41efe0e5407a3a7ebc427052c2875cd0b0f7ac62&v=4'),
                      ),
                      title: Text('Abhishek Bhonde'),
                      subtitle: Text("Hi there! "),
                      trailing: Icon(Icons.call),
                    );
                  }),
              Text('Calls'),
            ])));
  }
}
