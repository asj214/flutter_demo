import 'package:flutter/material.dart';
import 'package:flutter_demo/cards/card_show.dart';
import 'package:cached_network_image/cached_network_image.dart';

var cardLists = [
  {
    'id': 1,
    'url': 'https://2.bp.blogspot.com/-6u4LfrCn1W0/W6RGi5O2DlI/AAAAAAACVzE/aiOYKSX4ISQD5T2r0WxZAnGI6w_oybJNwCLcBGAs/s1600/%25EC%2595%2584%25EC%259D%25B4%25EC%259C%25A0%2B186.JPG',
    'title': '제일 좋아하는 아이유 사진'
  },
    {
    'id': 2,
    'url': 'https://1.bp.blogspot.com/-Zkws5VpzVdU/W6RGm9DqK5I/AAAAAAACVzs/04DOhteKaukITiIVUB9UwuCdHsPEyzFLQCLcBGAs/s1600/%25EC%2595%2584%25EC%259D%25B4%25EC%259C%25A0%2B191.jpg',
    'title': '참이슬 같은 아이유'
  },
  {
    'id': 3,
    'url': 'https://1.bp.blogspot.com/-AMqzs5SYTzg/W6RGSdHsKcI/AAAAAAACVw0/yrsFd4lHLX8xKWM5GSP3qIhV722_mwdLwCLcBGAs/s1600/%25EC%2595%2584%25EC%259D%25B4%25EC%259C%25A0%2B169.jpg',
    'title': '두번째 사진'
  }
];

class MainCard extends StatefulWidget {
  @override
  _MainCard createState() => _MainCard();
}

class _MainCard extends State<MainCard> {


  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.fromLTRB(7, 7, 7, 10),
      child: Column(
        children: cardLists.map((item) {
          return GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CardShow(id: item['id'])
                )
              );
            },
            child: Card(
              child: Container(
                decoration: BoxDecoration(color: Colors.white),
                margin: EdgeInsets.only(bottom: 5.0),
                child: Column(
                  children: [
                    Image(
                      image: CachedNetworkImageProvider(item['url']),
                      fit: BoxFit.cover
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        margin: EdgeInsets.fromLTRB(5, 10, 5, 5),
                        child: Text(item['title'], style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))
                      )
                    ),
                  ]
                )
              )
            )
          );
        }).toList()

      )
    );

  }

}