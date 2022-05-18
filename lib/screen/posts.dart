import 'package:flutter/material.dart';

class Posts extends StatefulWidget {
  const Posts({Key? key}) : super(key: key);

  @override
  State<Posts> createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Image.network(
                    'https://pbs.twimg.com/profile_images/1410983637391069187/bxoCUxj8_400x400.jpg',
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Routine of Nepal Banda.'),
                    Row(
                      children: const [
                        Text('2h'),
                        Icon(Icons.circle_rounded),
                      ],
                    )
                  ],
                ),
                Expanded(child: Container()),
                const Icon(
                  Icons.backpack,
                  size: 30,
                ),
                const Icon(
                  Icons.arrow_back_sharp,
                  size: 30,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
              '     Ae Mero Hajur-4 Director Jharana Thapa says, "मैले चाहिँ राम्रो चलचित्र बनाए भनें, मैले यतिसम्मको चलचित्र बनाए भनें मेरो दर्शकले मलाई चाहिँ स्विकार्नु हुन्छ र साथ दिनुहुन्छ र भोलीको दिनमा मैले यसैगरी साथ दिनु भयो भने आज यो "ए मेरो हजुर ४" दुई करोडको चलचित्र बनिरहेको छ भने भोलीको दिनमा यसैगरी साथ दिनु भयो भने २०० करोडको चलचित्र बनाउँछु म।"'),
          Image.network(
              'https://scontent.fktm3-1.fna.fbcdn.net/v/t39.30808-6/281543986_6171780289521379_8602301661043601607_n.jpg?_nc_cat=1&ccb=1-6&_nc_sid=8bfeb9&_nc_ohc=RujPXDD-oUsAX8Qhi4L&_nc_ht=scontent.fktm3-1.fna&oh=00_AT8_labpsCyNKPm7tTatCYlDSi3TLgOEhsjjZij5ehDrmg&oe=62898586'),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                const Icon(
                  Icons.thumb_up,
                  size: 20,
                  color: Colors.red,
                ),
                const Text('2k'),
                Expanded(child: Container()),
                const Text('999 comments'),
              ],
            ),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 1,
            indent: 10,
            endIndent: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //   FlatButton(
              //   child: const Text('round button', style: TextStyle(color: Colors.black),),
              //   onPressed: () {},
              // ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.thumb_up),
                label: const Text('Like'),
                style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 18),
                    primary: Colors.white,
                    onPrimary: Colors.black),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.message_outlined),
                label: const Text('Comment'),
                style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 18),
                    primary: Colors.white,
                    onPrimary: Colors.black),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.arrow_right_alt),
                label: const Text('Share'),
                style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 18),
                    primary: Colors.white,
                    onPrimary: Colors.black),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Divider(
            // height: 5,
            thickness: 12,
            color: Colors.grey.withOpacity(0.5),
          )
        ],
      ),
    );
  }
}
