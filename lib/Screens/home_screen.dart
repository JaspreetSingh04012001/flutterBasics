import 'package:basic_projects/Screens/second_screen.dart';
import 'package:flutter/material.dart';

List<Map<String, String>> recentChats = [
  {
    'userpicture':
        'https://i.pravatar.cc/150?u=user1', // Placeholder from Pravatar
    'username': 'CodingGuru',
    'lastMessage': 'Great! Let me know if you run into any other issues.',
  },
  {
    'userpicture':
        'https://i.pravatar.cc/150?u=user2', // Placeholder from Pravatar
    'username': 'TravelFanatic',
    'lastMessage': 'Just booked my tickets! So excited for the trip.',
  },
  {
    'userpicture':
        'https://i.pravatar.cc/150?u=user3', // Placeholder from Pravatar
    'username': 'FoodieFriend',
    'lastMessage': 'That new pizza place is amazing, you have to try it!',
  },
  {
    'userpicture':
        'https://i.pravatar.cc/150?u=user4', // Placeholder from Pravatar
    'username': 'BookLover',
    'lastMessage': 'Finished the novel last night. What a fantastic ending!',
  },
  {
    'userpicture':
        'https://i.pravatar.cc/150?u=user5', // Placeholder from Pravatar
    'username': 'MusicMaestro',
    'lastMessage': 'Working on a new track, what do you think of this melody?',
  },
];

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(
        //   onPressed: () {
        //     showDialog(
        //       context: context,
        //       builder: (context) {
        //         return CupertinoAlertDialog(
        //           title: Text("djncdjcn"),
        //           actions: [
        //             ElevatedButton(
        //               onPressed: () {
        //                 Navigator.of(context).pop();
        //               },
        //               child: Text("Close"),
        //             ),
        //           ],
        //         );
        //       },
        //     );
        //   },
        //   icon: Icon(Icons.abc),
        // ),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: InkWell(
          splashColor: Colors.black,
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return SecondScreen();
                },
              ),
            );
          },
          child: Text("Screen 1"),
        ),
      ),
    );
  }
}

/*

GridView(
        scrollDirection: Axis.vertical,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
        ),
        children: List.generate(22, (i) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(height: 600, width: 100, color: Colors.red),
          );
        }),
      ),


ListView.builder(
        itemCount: recentChats.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {},
            isThreeLine: true,
            subtitle: Text("${recentChats[index]['lastMessage']}"),
            leading: CircleAvatar(
              backgroundColor: Colors.blue,

              foregroundImage: NetworkImage("https://i.pravatar.cc/150?u=user"),
            ),
            title: Text("${recentChats[index]['username']}"),
            trailing: IconButton(onPressed: () {}, icon: Icon(Icons.message)),
          );
        },
      )
 */
