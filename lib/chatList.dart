import 'package:flutter/material.dart';
import 'chatScreen.dart';

class ChatListScreen extends StatelessWidget {
  const ChatListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'WhatsApp',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.camera_alt_outlined, color: Colors.black, size: 30),
            onPressed: () {
              // Implement camera functionality
            },
          ),
          const SizedBox(width: 10),
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black, size: 30),
            onPressed: () {
              // Implement search functionality
            },
          ),
          const SizedBox(width: 10), // Add spacing between icons
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.black, size: 30),
            onPressed: () {
              // Implement more options functionality
            },
          ),
        ],
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const CircleAvatar(child: Icon(Icons.person)),
            title: Text('Contact Name $index'),
            subtitle: const Text('Last message'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ChatScreen()),
              );
            },
          );
        },
      ),
      floatingActionButton: Container(
        margin: const EdgeInsets.only(bottom: 60), // Adjust margin to move the FAB higher
        child: FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: () {
            // Implement action for floating action button
          },
          child: const Icon(Icons.add),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.update),
            label: 'Updates',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.groups),
            label: 'Communities',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Calls',
          ),
        ],
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        currentIndex: 0, // Replace with current index for active tab
        onTap: (int index) {
          // Handle bottom navigation bar item taps
          // Example:
          // if (index == 1) {
          //   Navigator.push(context, MaterialPageRoute(builder: (context) => GroupsScreen()));
          // }
        },
      ),
    );
  }
}
