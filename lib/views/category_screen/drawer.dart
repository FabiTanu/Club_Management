import 'package:flutter/cupertino.dart';

import '../../consts/consts.dart';

// class MyDrawer extends StatelessWidget {
//   const MyDrawer({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final imageUrl =
//         "https://cdn.britannica.com/76/114776-050-378B4E5B/Provincial-Parliament-Buildings-Victoria-Canada-British-Columbia.jpg";
//     // ignore: prefer_const_constructors
Widget changeDrawer() {
  return Drawer(
    child: Container(
      color: Colors.deepPurple,
      child: ListView(
        padding: EdgeInsets.zero,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(color: Colors.deepPurple),
                accountName: Text("Fabiha Akter"),
                accountEmail: Text("fabihaakter1999@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage(imgProfile),
                  foregroundColor: Colors.deepPurple,
                  backgroundColor: Colors.deepPurple,
                ),
                //currentAccountPicture: Image.network(imageUrl),
              )),
          const ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.white,
            ),
            title: Text(
              "Home",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.white),
            ),
          ),
          const ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.white,
            ),
            title: Text(
              "Profile",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.white),
            ),
          ),
          const ListTile(
            leading: Icon(
              CupertinoIcons.mail,
              color: Colors.white,
            ),
            title: Text(
              "Email",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    ),
  );
}
//}
//} 