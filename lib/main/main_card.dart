import 'package:flutter/material.dart';

var cardLists = [
  {
    'id': 1,
    'url': 'https://1.bp.blogspot.com/-Zkws5VpzVdU/W6RGm9DqK5I/AAAAAAACVzs/04DOhteKaukITiIVUB9UwuCdHsPEyzFLQCLcBGAs/s1600/%25EC%2595%2584%25EC%259D%25B4%25EC%259C%25A0%2B191.jpg',
    'title': '참이슬 같은 아이유'
  },
  {
    'id': 2,
    'url': 'https://4.bp.blogspot.com/-jT9IaXg0d_I/W6RFHGbN4LI/AAAAAAACVmc/zDZ_5PwYymAEgxMIHkI1_--6J17w8JGrACLcBGAs/s1600/%25EC%2595%2584%25EC%259D%25B4%25EC%259C%25A0%2B103.jpg',
    'title': '두번째 사진'
  }
];

final List<Widget> cards = cardLists.map((item) {
  return Card(
    child: Container(
      decoration: BoxDecoration(color: Colors.white),
      margin: EdgeInsets.only(bottom: 5.0),
      child: Column(
        children: [
          Image.network(item['url'], fit: BoxFit.cover),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.all(5.0),
              child: Text(item['title'], style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))
            )
          ),
        ]
      )
    )
  ); 
}).toList();


class MainCard extends StatefulWidget {
  @override
  _MainCard createState() => _MainCard();
}

class _MainCard extends State<MainCard> {
  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
        children: cards
      )
    );

  }
}