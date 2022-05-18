import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselWidget extends StatefulWidget {
  const CarouselWidget({Key? key}) : super(key: key);

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  // int _currentIndex = 0;

  final List<String> imgList = [
    'assets/images/20nucool.jpg',
    'asset/images/guitar.jpg',
    'asset/images/image1.jpg',
    'asset/images/nature.jpg',
  ];

  final List<String> imageList = [
    'https://i.pinimg.com/originals/c4/2c/d3/c42cd325eb9e88ff4acd0b6914b9a3f0.jpg',
    'https://w0.peakpx.com/wallpaper/797/924/HD-wallpaper-kokushibo-demon-upper-moon.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJcSXvWWlXx3gtmVTnV5098XhOnmUw8kQL4w&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrtz8pd6ETpK3szbxbI5dd70UKFilYfRBjLA&usqp=CAU',
    'https://wallpaperaccess.com/full/5792762.jpg',
  ];
  final List profileImg = [
    'https://imageio.forbes.com/specials-images/imageserve/60ede06c39d1b0ed3859d7ab/Facebook-CEO-Mark-Zuckerberg/0x0.jpg?fit=crop&format=jpg&crop=2155,1437,x0,y0,safe',
    'https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTgwMTc5MTIxNDE2OTcxNjA4/gettyimages-1165301142.jpg',
    'https://cdn.britannica.com/45/223045-050-A6453D5D/Telsa-CEO-Elon-Musk-2014.jpg',
    'https://i.ytimg.com/vi/eRbJUFmmQWA/maxresdefault.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Prime_Minister_of_Nepal%2C_Mr._K.P._Sharma_Oli%2C_at_Hyderabad_House%2C_in_New_Delhi_on_April_07%2C_2018_%281%29.jpg/220px-Prime_Minister_of_Nepal%2C_Mr._K.P._Sharma_Oli%2C_at_Hyderabad_House%2C_in_New_Delhi_on_April_07%2C_2018_%281%29.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: imageList.length,
          options: CarouselOptions(
            // enlargeCenterPage: true,
            // enableInfiniteScroll: false,
            height: 200,
            viewportFraction: 0.3,
            // autoPlay: true,
            // autoPlayInterval: const Duration(seconds: 3),
            // reverse: false,
            aspectRatio: 5.0,
          ),
          itemBuilder: (context, i, id) {
            //for onTap to redirect to another screen
            return GestureDetector(
              child: Container(
                margin: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.black,
                      width: 1.0,
                    )),
                //ClipRRect for image border radius
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(13),
                  child: Stack(children: [
                    Image.network(
                      imageList[i],
                      width: 125,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      left: 10,
                      top: 10,
                      child: ClipOval(
                        child: Image.network(
                          profileImg[i],
                          width: 35,
                          height: 35,
                          fit: BoxFit.cover
                        ),
                      ),
                    )
                  ]),
                ),
              ),
              onTap: () {
                // var url = imageList[i];
                // print(url.toString());
              },
            );
          },
        ),
        const SizedBox(
          height: 5,
        ),
        Divider(
        thickness: 12,
        // height: 10,
        color: Colors.grey.withOpacity(0.5),
      )
      ],
    );
    //       CarouselSlider(
    // items: imgList
    //         .map((item) => Container(
    //               decoration: BoxDecoration(
    //                 image: DecorationImage(image: AssetImage(item),fit: BoxFit.cover)
    //               ),

    //             )) .toList(),
    // options: CarouselOptions(
    //   autoPlay: true,
    //   disableCenter: false,
    // )) ,
  }
}
