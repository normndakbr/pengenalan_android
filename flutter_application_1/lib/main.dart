import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: Classico(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Classico extends StatelessWidget {
  const Classico({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController textCtl = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('AppBar Demo'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.home_outlined),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text('Hello, this is Classico'),
              ));
            },
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Go to the next page',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) {
                    return const Profile();
                  },
                ),
              );
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Floating Button pressed'),
            ),
          );
        },
        backgroundColor: Colors.deepOrangeAccent,
        child: Icon(Icons.wifi),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image(
              image: AssetImage('assets/images/dc_logo.png'),
            ),
            // Image.network('https://picsum.photos/250?image=9'),
            Container(
              // color: Colors.brown,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  //horizontal
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0.0),
                      child: Container(
                        color: Colors.cyan,
                        height: 40,
                        width: 40,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0.0),
                      child: Container(
                        color: Colors.red,
                        height: 40,
                        width: 40,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0.0),
                      child: Container(
                        color: Colors.purple,
                        height: 40,
                        width: 40,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              // color: Colors.yellowAccent,
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.teal,
                  ),
                  height: 250.0,
                  width: 250.0,
                  child: const Center(
                    child: Text(
                      'Hello from Classico',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('Button pressed'),
                  ));
                },
                child: Text('Ini button'),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.lime,
                ),
              ),
            ),
            TextField(
              controller: textCtl,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Please enter a search term'),
            ),
          ],
        ),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Page'),
      ),
      body: const Center(
        child: Text(
          'This is profile page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
