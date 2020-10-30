import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'https://1.bp.blogspot.com/-Zkws5VpzVdU/W6RGm9DqK5I/AAAAAAACVzs/04DOhteKaukITiIVUB9UwuCdHsPEyzFLQCLcBGAs/s1600/%25EC%2595%2584%25EC%259D%25B4%25EC%259C%25A0%2B191.jpg',
  'https://4.bp.blogspot.com/-jT9IaXg0d_I/W6RFHGbN4LI/AAAAAAACVmc/zDZ_5PwYymAEgxMIHkI1_--6J17w8JGrACLcBGAs/s1600/%25EC%2595%2584%25EC%259D%25B4%25EC%259C%25A0%2B103.jpg',
  'https://1.bp.blogspot.com/-AMqzs5SYTzg/W6RGSdHsKcI/AAAAAAACVw0/yrsFd4lHLX8xKWM5GSP3qIhV722_mwdLwCLcBGAs/s1600/%25EC%2595%2584%25EC%259D%25B4%25EC%259C%25A0%2B169.jpg',
  'https://3.bp.blogspot.com/-23CszBfDUxk/W6RFvaB5K_I/AAAAAAACVsA/IzPRfUfdkKcvUZlJVEqEYtkh0jZbMUB_gCLcBGAs/s1600/%25EC%2595%2584%25EC%259D%25B4%25EC%259C%25A0%2B134.JPG',
  'https://1.bp.blogspot.com/-6VnfY4UR304/W6RFmMb8WwI/AAAAAAACVqo/11Kw_vHJbq0nVXJAuiGTSKglcX2koZTjgCLcBGAs/s1600/%25EC%2595%2584%25EC%259D%25B4%25EC%259C%25A0%2B123.jpg',
  'https://1.bp.blogspot.com/-nGiivYbVI4M/W6RFaK6w-bI/AAAAAAACVpA/J9zodrLRn7sfAWGwbdt8Tzfyo4d9CFnEwCLcBGAs/s1600/%25EC%2595%2584%25EC%259D%25B4%25EC%259C%25A0%2B111.jpg'
];

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[Image.network(item, fit: BoxFit.cover)],
                )),
          ),
        ))
    .toList();

class MainSwiper extends StatefulWidget {
  @override
  _MainSwiper createState() => _MainSwiper();
}

class _MainSwiper extends State<MainSwiper> {

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.fromLTRB(0, 5, 0, 15),
      child: CarouselSlider(
        options: CarouselOptions(
          aspectRatio: 2.0,
          enlargeCenterPage: false,
          enableInfiniteScroll: true,
          initialPage: 1,
          autoPlay: true,
        ),
        items: imageSliders,
      )
    );

  }

}
