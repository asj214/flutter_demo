import 'package:flutter/material.dart';


var card = {
  'id': 1,
  'url': 'https://2.bp.blogspot.com/-6u4LfrCn1W0/W6RGi5O2DlI/AAAAAAACVzE/aiOYKSX4ISQD5T2r0WxZAnGI6w_oybJNwCLcBGAs/s1600/%25EC%2595%2584%25EC%259D%25B4%25EC%259C%25A0%2B186.JPG',
  'title': '제일 좋아하는 아이유 사진',
  'body': "I just have a simple Card like new Card(child: new Text('My cool card')) and I want to be able to click anywhere on it to run some function, except there's no onPressed method for a Card. I could add a button to the bottom, but that's not ideal for this situation. Anyone know how to make the whole card clickable?"
};

class CardShow extends StatefulWidget {
  final int id;
  CardShow({Key key, @required this.id}) : super(key: key);
  @override
  _CardShow createState() => _CardShow();
}

class _CardShow extends State<CardShow> {
  @override
  Widget build(BuildContext context) {

    // print(widget.id);

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('Card Detail'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.fromLTRB(7, 7, 7, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                child: Container(
                  decoration: BoxDecoration(color: Colors.white),
                  margin: EdgeInsets.only(bottom: 5.0),
                  child: Column(
                    children: [
                      
                      Image.network(card['url'], fit: BoxFit.cover),
                      
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(5, 10, 5, 5),
                          child: Text(card['title'], style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))
                        )
                      ),
                      
                      Container(
                        margin: EdgeInsets.fromLTRB(7, 10, 5, 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(card['body'], style: TextStyle(fontSize: 18))
                        )
                      )

                    ]
                  )

                )
              )
            ]
          )
        )
      )
    );

  }
}