import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News Card Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News Card Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.network("https://play-lh.googleusercontent.com/Iip-8Yn3PLAzecCMb4ZaHTvFObl3ETUWZmd5zLflhbB6BXKyNc5aM4hrGAA9NXSs7i0=w240-h480-rw"),
                const Text(
                  '1/1/2021',
                  style: TextStyle(fontSize: 12),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Mass shooting in Atlanta',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris porttitor.'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    TextButton(onPressed: () {}, child: const Text('Share')),
                    TextButton(onPressed: () {}, child: const Text('Bookmark')),
                    TextButton(onPressed: () {}, child: const Text('Link')),
                  ],
                )
              ],
            ),
          ),

        ),
      ),
    );
  }
}