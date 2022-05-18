import 'package:face_dub/screen/posts.dart';
import 'package:face_dub/screen/scroll.dart';
import 'package:face_dub/screen/top_bar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Scroll());
  }
}
