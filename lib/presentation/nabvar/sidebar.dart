import 'package:flutter/material.dart';
import 'package:fresh_n_fresh/presentation/add_to_cart/add_to_cart.dart';
import 'package:fresh_n_fresh/presentation/help_&_support/message.dart';
import 'package:fresh_n_fresh/presentation/homepage/homepage.dart';
import 'package:fresh_n_fresh/presentation/my_orders/myorders.dart';
import 'package:fresh_n_fresh/presentation/profile/profile.dart';
import 'package:fresh_n_fresh/presentation/wishlist/wishlist.dart';

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
                            return const HomePageMain();
                          },
                        ),
                      );
                    }
                    if (index == 1) {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) {
                            return const Profile();
                          },
                        ),
                      );
                    }
                    if (index == 2) {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) {
                            return const Message();
                          },
                        ),
                      );
                    }
                    if (index == 3) {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) {
                            return const AddToCart();
                          },
                        ),
                      );
                    }
                    if (index == 4) {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) {
                            return const MyOrders();
                          },
                        ),
                      );
                    }
                    if (index == 5) {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) {
                            return const Wishlist();
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
  'Dashboard',
  'profile',
  'Help & Support',
  'Cart',
  'My Orders',
  'Wish List'
];
List<IconData> menuIcons = [
  Icons.dashboard,
  Icons.person_sharp,
  Icons.people,
  Icons.local_grocery_store,
  Icons.shopping_bag_outlined,
  Icons.favorite
];
