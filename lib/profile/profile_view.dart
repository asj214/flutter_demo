import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.fromLTRB(7, 7, 7, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10.0),
                    child: Image.asset('assets/images/profile.png', width: 120, height: 120, fit: BoxFit.cover)
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 5.0, bottom: 10.0),
                        child: Text('sjahn', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
                      ),
                      Text('birth: yyyy.mm.dd', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                      Text('email: email@email.com', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                      Text('phone: 000-0000-0000', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))
                    ],
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 15.0),
                child: Text('Intro', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0),
                child: Text('아버지는 나귀타고 장에 가시고...\n할머니는 건너마을 아저씨 댁에...\n고추먹고 맴맴...\n달래먹고 맴맴...', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))
              )
            ]
          )
        )
      )
    );

  }

}