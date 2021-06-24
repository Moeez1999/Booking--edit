//import 'dart:html';

import 'package:book/HotelForm.dart';
import 'package:book/booking_model.dart';
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:cloud_firestore/cloud_firestore.dart';

class Result extends StatelessWidget {
  Book book;
  final firestore = FirebaseFirestore.instance;

  Result({this.book});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Image.asset('assets/background.jpeg').color,
        body: SingleChildScrollView(
            child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/background.jpg'),
                  fit: BoxFit.cover)),
          child: Dialog(
            child: Column(children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 15, top: 100, right: 5),
                height: 200,
                width: MediaQuery.of(context).size.width,
                color: Colors.green,
                child: Row(
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: Image(
                        image: AssetImage("assets/hotel.png"),
                        height: 150,
                        width: 150,
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Hotel Booking",
                          style: TextStyle(
                              fontSize: 27,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 15, left: 15, right: 5),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.person,
                          color: Colors.green,
                          size: 25,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Expanded(
                          child: Text(
                            book.firstname,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                    Divider(),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.perm_identity,
                          color: Colors.green,
                          size: 25,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Expanded(
                          child: Text(
                            book.cnic,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                    Divider(),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.phone,
                          color: Colors.green,
                          size: 25,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Expanded(
                          child: Text(
                            book.phonenumber,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                    Divider(),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.mail_rounded,
                          color: Colors.green,
                          size: 25,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Expanded(
                          child: Text(
                            book.email,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                    Divider(),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.home,
                          color: Colors.green,
                          size: 25,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Expanded(
                          child: Text(
                            book.address,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                    Divider(),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.location_city,
                          color: Colors.green,
                          size: 25,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Expanded(
                          child: Text(
                            book.city,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                    Divider(),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.family_restroom,
                          color: Colors.green,
                          size: 25,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Expanded(
                          child: Text(
                            book.nooffamilymember,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                    Divider(),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.child_care,
                          color: Colors.green,
                          size: 25,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Expanded(
                          child: Text(
                            book.noofchild,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                    Divider(),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.family_restroom_sharp,
                          color: Colors.green,
                          size: 25,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Expanded(
                          child: Text(
                            book.noofadults,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                    Divider(),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.calendar_today,
                          color: Colors.green,
                          size: 25,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Expanded(
                          child: Text(
                            book.dateofarrival,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                    Divider(),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.calendar_today_outlined,
                          color: Colors.green,
                          size: 25,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Expanded(
                          child: Text(
                            book.dateofdeparture,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                    Divider(),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.comment_rounded,
                          color: Colors.green,
                          size: 25,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Expanded(
                          child: Text(
                            book.comments,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 40.0),
                    Container(
                      height: 50,
                      alignment: Alignment.bottomRight,
                      child: FlatButton(
                          color: Colors.white,
                          child: Text(
                            "Submit",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          textColor: Colors.black87,
                          onPressed: () {
                            firestore.collection('hotel_booking').add({
                              'Full Name': book.firstname,
                              'Email': book.email,
                              'Contact No': book.phonenumber,
                              'Address': book.address,
                              'City': book.city,
                              'CNIC': book.cnic,
                              'Roomtype': book.roomtype,
                              'Number of Adults': book.noofadults,
                              'Number of Child': book.noofchild,
                              'Number of Family Member': book.nooffamilymember,
                              'Check In Date': book.dateofarrival,
                              'Check Out Date': book.dateofdeparture,
                              'Comments': book.comments,
                            });
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialogBox();
                                });
                          }),
                    )
                  ],
                ),
              ),
            ]),
          ),
        )));
  }
}

class AlertDialogBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
        child: Stack(
          overflow: Overflow.visible,
          alignment: Alignment.topCenter,
          children: [
            Container(
              height: 200,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 70, 10, 10),
                child: Column(
                  children: [
                    Text(
                      'Success ',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Thanks ! Your room has been booked',
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HotelForm()));
                      },
                      color: Colors.green,
                      child: Text(
                        'Okay',
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
                top: -60,
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 60,
                  child: Icon(
                    Icons.check_circle,
                    color: Colors.white,
                    size: 50,
                  ),
                )),
          ],
        ));
  }
}
