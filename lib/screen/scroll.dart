import 'package:face_dub/screen/app_bar.dart';
import 'package:face_dub/screen/carousel_widget.dart';
import 'package:face_dub/screen/post_widget.dart';
import 'package:face_dub/screen/posts.dart';
import 'package:face_dub/screen/top_bar.dart';
import 'package:flutter/material.dart';

class Scroll extends StatelessWidget {
  const Scroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Top(),
        MyAppBar(),
        SizedBox(
          height: 5,
        ),
        PostWidget(),
        SizedBox(
          height: 5,
        ),
        CarouselWidget(),
        SizedBox(
          height: 5,
        ),
        Posts(),
        Posts(),
        Posts(),
      ],
    );
  }
}
