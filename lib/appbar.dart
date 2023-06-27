import 'package:flutter/material.dart';
import 'aboutme.dart';

class AppBarPage extends StatelessWidget implements PreferredSizeWidget {
  const AppBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AppBar(
        title: const Text(
          'FindITCareer',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => AboutMeScreen())));
            },
            icon: const Icon(Icons.account_circle),
            iconSize: 30.0,
          ),
          const Padding(padding: EdgeInsets.all(10)),
        ],
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff0096ff), Color(0xff6610f2)],
              ),
              image: DecorationImage(
                  image: AssetImage('images/pattern1.png'),
                  opacity: -60.0,
                  fit: BoxFit.cover,
                  repeat: ImageRepeat.repeat)),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
