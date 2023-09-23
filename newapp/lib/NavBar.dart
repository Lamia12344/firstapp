import 'package:flutter/material.dart';
import 'splash_screen.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("lamia.com"),
            accountEmail: Text("la@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  "images/hello.jpg",
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            // ignore: prefer_const_constructors
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 0, 140, 255),
            ),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text("lamiaa"),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("friend"),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text("request"),
            onTap: () => splashscreen(),
            trailing: ClipOval(
              child: Container(
                color: Colors.red,
                width: 20,
                height: 20,
                child: Center(
                  child: Text(
                    '8',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("settings"),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text("exit"),
            onTap: () => null,
          ),
        ],
      ),
    );
  }

  ListTile buildlistTile(ctx, s, ob) {
    return ListTile(
        tileColor: Colors.red,
        leading: ob,
        trailing: Icon(Icons.arrow_forward_ios),
        title: Text(
          s,
          style: TextStyle(fontSize: 16, color: Colors.blue),
        ),
        selectedColor: Color.fromARGB(255, 22, 1, 1),
        onTap: () {
          if (s == "lamiaa")
            Navigator.pop(ctx);
          else if (s == "friend")
            Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
              return splashscreen();
            }));
        });
  }
}
