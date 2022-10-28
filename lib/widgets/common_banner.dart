import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:good_house/widgets/common_image.dart';

// w 750  h 424
const List<String> defaultList = [
  "static/01.jpg",
  "static/02.jpg",
  "static/03.jpg",
];

class CommonBanner extends StatelessWidget {
  final List<String> imgList;
  const CommonBanner({Key? key, this.imgList = defaultList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.width/750*424;
    double width = MediaQuery.of(context).size.width;
    return Swiper(
      itemWidth: width,
      itemHeight: height,
      itemBuilder: (BuildContext context, int index) {
        return CommonImage(src: imgList[index], fit: BoxFit.fill,height: height, width: width);
      },
      itemCount: 3,
      pagination: const SwiperPagination(),
      layout: SwiperLayout.STACK,
      autoplay: true,
      autoplayDelay: 3000,

    );
  }
}

