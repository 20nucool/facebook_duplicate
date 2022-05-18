import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            ClipOval(
              child: Image.asset(
                'assets/images/20nucool.jpg',
                // Image.network(
                //   'https://www.bhaktiphotos.com/wp-content/uploads/2018/04/Mahadev-Bhagwan-Photo-for-Devotee.jpg',
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const Expanded(
              child: TextField(
                  style: TextStyle(
                      fontSize: 20.0, 
                      height: 1.2, color: Colors.black),
                  decoration: InputDecoration(
                    hintText: "What's on your mind?",
                    // contentPadding: EdgeInsets.fromLTRB(20.0, 20.0 ,0.0, 0.0),
                    // contentPadding: EdgeInsets.symmetric(
                    //     horizontal: 20.0, vertical: 20.0),

                    contentPadding: EdgeInsets.only(left: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      // borderSide:
                      //     BorderSide(color: Colors.greenAccent, width: 2.0),
                    ),
                  )),
            ),
          ],
        ),
      ),
      const Divider(
        thickness: 1, // thickness of the line
        //  indent: 20, // empty space to the leading edge of divider.
        //  endIndent: 20, // empty space to the trailing edge of the divider.
        color: Colors.grey, // The color to use when painting the line.
        height: 6, // The divider's height extent.
      ),
      const SizedBox(
        height: 5,
      ),
      IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                // SizedBox(width: 30,),
                Icon(
                  Icons.video_camera_front,
                  color: Colors.red,
                ),
                Text(
                  'Live',
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
            const VerticalDivider(
              color: Colors.grey,
              thickness: 1,
              //  width: 20,
              // indent: 1,
              // endIndent: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                // SizedBox(width: 30,),
                Icon(
                  Icons.photo,
                  color: Colors.green,
                ),
                Text(
                  'Photo',
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
            const VerticalDivider(
              color: Colors.grey,
              thickness: 1, width: 1,
              // indent: 1,
              // endIndent: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(
                  Icons.video_call,
                  color: Colors.indigo,
                ),
                Text(
                  'Room',
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          ],
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Divider(
        thickness: 15,
        // height: 20,
        color: Colors.grey.withOpacity(0.5),
      )
    ]);
  }
}
