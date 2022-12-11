import 'package:flutter/material.dart';
import 'package:profile_avatar_ts/profile_avatar.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Avatar Plugin'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Avatar(borderRadius: 50, avatarSize:80,borderColor: Colors.green, borderWidth: 5,name: "Techsuzu", ),
                const SizedBox(
                  height: 20,
                ),
                Avatar(borderRadius: 80, avatarSize:80,borderColor: Colors.blue, borderWidth: 5,)
              ],
            ),
          )),
    );
  }
}
