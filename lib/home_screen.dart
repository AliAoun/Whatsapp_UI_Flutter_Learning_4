import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

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
            centerTitle: false,
            title: const Text(
              'Whatsapp',
            ),
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Icon(Icons.groups),
                ),
                Tab(
                  child: Text('Chats'),
                ),
                Tab(
                  child: Text('Status'),
                ),
                Tab(
                  child: Text('Calls'),
                ),
              ],
            ),
            actions: [
              const Icon(Icons.search),
              const SizedBox(
                width: 10,
              ),
              PopupMenuButton(
                icon: const Icon(Icons.more_vert_outlined),
                itemBuilder: (
                  context,
                ) =>
                    const [
                  PopupMenuItem(
                    value: '1',
                    child: Text('New Group'),
                  ),
                  PopupMenuItem(
                    value: '2',
                    child: Text('Linked devices'),
                  ),
                  PopupMenuItem(
                    value: '3',
                    child: Text('Settings'),
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              )
            ],
          ),
          body: TabBarView(
            children: [
              const Text('Groups'),
              ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) {
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://moodoffdp.com/wp-content/uploads/2023/04/Cool-Anime-Boys-DP-for-Whatsapp-and-Facebook-Profile-Picture.jpg'),
                    ),
                    subtitle: Text('Your personal messages here.'),
                    title: Text('Ali Aoun',
                      style: TextStyle(
                          fontWeight: FontWeight.bold),),
                    trailing: Text('1:34 AM',
                      style: TextStyle(
                          color: Colors.black54),),
                  );
                },
              ),
              ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                              backgroundImage: const  NetworkImage(
                                  'https://moodoffdp.com/wp-content/uploads/2023/04/Cool-Anime-Boys-DP-for-Whatsapp-and-Facebook-Profile-Picture.jpg'),
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.white,width: 2),
                                  ),
                                  child:  const CircleAvatar(
                                    backgroundColor: Colors.teal,
                                    radius: 8,
                                    child: Icon(
                                      Icons.add,
                                      size: 15.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                          ),
                          title:  const Text('My status',
                            style: TextStyle(
                                fontWeight: FontWeight.bold),),
                          subtitle:  const Text('Tab to add status update'),
                        ),
                        const ListTile(
                          title: Text(
                            'Recent updates',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black54),
                          ),
                        ),
                        ListTile(
                          leading: Container(
                            padding:  const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.green, width: 2),
                            ),
                            child:  const CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://moodoffdp.com/wp-content/uploads/2023/04/Cool-Anime-Boys-DP-for-Whatsapp-and-Facebook-Profile-Picture.jpg'),
                            ),
                          ),
                          title:  const Text('Friend XYZ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold),),
                          subtitle:  const Text(' Yesterday, 12:26 PM'),
                        ),
                        ListTile(
                          leading: Container(
                            padding:  const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.green, width: 2),
                            ),
                            child: const CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://moodoffdp.com/wp-content/uploads/2023/04/Cool-Anime-Boys-DP-for-Whatsapp-and-Facebook-Profile-Picture.jpg'),
                            ),
                          ),
                          title: const Text('Friend XYZ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold),),
                          subtitle:  const Text(' Yesterday, 12:26 PM'),
                        ),
                        const ListTile(
                          title: Text(
                            'Viewed updates',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black54),
                          ),
                        ),
                      ],
                    );
                  } else {
                    return Column(
                      children: [
                        ListTile(
                          leading: Container(
                            padding:  const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.grey, width: 2),
                            ),
                            child: const CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://moodoffdp.com/wp-content/uploads/2023/04/Cool-Anime-Boys-DP-for-Whatsapp-and-Facebook-Profile-Picture.jpg'),
                            ),
                          ),
                          title: const  Text('Friend XYZ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold),),
                          subtitle: const  Text(' Yesterday, 12:26 PM'),
                        ),
                      ],
                    );
                  }
                },
              ),
              ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading:  const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://moodoffdp.com/wp-content/uploads/2023/04/Cool-Anime-Boys-DP-for-Whatsapp-and-Facebook-Profile-Picture.jpg'),
                    ),
                    title: Text(
                      'Friend XYZ',
                      style: TextStyle(
                          color: index % 3 == 0 ? Colors.black : Colors.red),
                    ),
                    trailing: Icon(
                      index % 3 == 0 ? Icons.call : Icons.videocam_rounded,
                      color: Colors.teal,
                    ),
                    subtitle: Row(
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Icon(
                              index % 3 == 0
                                  ? Icons.call_made_sharp
                                  : Icons.call_received_sharp,
                              color:
                                  index % 3 == 0 ? Colors.green : Colors.red),
                        ),
                        const Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(' Yesterday, 12:26 PM'),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ));
  }
}
