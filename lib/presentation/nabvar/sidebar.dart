import 'package:flutter/material.dart';
import 'package:fresh_n_fresh/presentation/help_&_support/message.dart';

var currentIndex = 0;

class Sidebar extends StatefulWidget {
  const Sidebar({Key? key}) : super(key: key);

  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        // mainAxisSize: MainAxisSize.min,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('Admin'),
            accountEmail: const Text('admin123@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                    'https://cdn-icons-png.flaticon.com/512/906/906343.png'),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                            padding: const EdgeInsets.only(left: 8, right: 8),

              itemBuilder: (context, index) {
                return listMenu(
                  menu[index],
                  menuIcons[index],
                  index,
                  (() {
                    setState(() {
                      currentIndex = index;
                    });
                    if (index == 0) {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) {
                            return const Message();
                          },
                        ),
                      );
                    }
                  }),
                );
                
              },
              itemCount: menu.length,
            ),
            
          )
        ],
      ),
    );
  }
}

ListTile listMenu(
    String text, IconData icon, int index, VoidCallback function) {
  return ListTile(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      leading: Icon(
        icon,
        color: Colors.grey,
      ),
      title: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.w500),
      ),
      selectedTileColor: const Color.fromRGBO(142, 198, 235, 1),
      selected: currentIndex == index ? true : false,
      selectedColor: Colors.black,
      onTap: function);
}

List<String> menu = [
  'Help & Support',
  
];
List<IconData> menuIcons = [
  Icons.people,
 
];
