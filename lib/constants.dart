import 'package:flutter/material.dart';

var myDefaultBackground = Colors.grey[300];

var myAppBar = AppBar(
    backgroundColor: Colors.orange[900],
    title: const Text('M U E B L E S     P E T'),
    centerTitle: true,
  
    actions: const [
      Image(
        image: NetworkImage('assets/AVI.jpg'),
      )
    ],
);


var myDrawer = Drawer(
  child: ListView(
    padding: EdgeInsets.zero,
    children: [
      DrawerHeader(
        decoration: const BoxDecoration(
          color: Colors.deepOrange,
        ),
        child: Column(
          children: const[
            Text(
              'U S U A R I O',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            Icon(
              Icons.account_circle_outlined,
              color: Colors.white,
              size: 70.0,
            )
          ],
        ),
      ),
      const ListTile(
        leading: Icon(
          Icons.home,
          color: Colors.black,
          size: 30.0,
        ),
        title: Text('P r i n c i p a l'),
      ),
      const ListTile(
        leading: Icon(
          Icons.chat,
          color: Colors.black,
          size: 30.0,
        ),
        title: Text('M e n s a j e'),
      ),
      const ListTile(
        leading: Icon(
          Icons.settings,
          color: Colors.black,
          size: 30.0,
        ),
        title: Text('C o n f i g u r a c i ó n'),
      ),
      const ListTile(
        leading: Icon(
          Icons.whatsapp,
          color: Colors.black,
          size: 30.0,
        ),
        title: Text('T e l e f o n o'),
      ),
      const ListTile(
        leading: Icon(
          Icons.email,
          color: Colors.black,
          size: 30.0,
        ),
        title: Text('G m a i l'),
      ),
      const ListTile(
        leading: Icon(
          Icons.facebook,
          color: Colors.black,
          size: 30.0,
        ),
        title: Text('F a c e b o o k'),
      ),
      const ListTile(
        leading: Icon(
          Icons.telegram,
          color: Colors.black,
          size: 30.0,
        ),
        title: Text('T e l e g r a m'),
      ),
      const ListTile(
        leading: Icon(
          Icons.logout,
          color: Colors.black,
          size: 30.0,
        ),
        title: Text('S a l i r'),
      ),
      const ListTile(
        leading: Icon(
          Icons.star,
          color: Colors.black,
          size: 30.0,
        ),
        title: Text('Dejanos tu puntuación'),
      ),
    ],
  ),
);
