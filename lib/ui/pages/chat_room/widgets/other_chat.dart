import 'dart:core';
import 'package:flutter/material.dart';
import 'package:team3_kakao/_core/constants/color.dart';
import 'package:team3_kakao/_core/constants/font.dart';
import 'package:team3_kakao/_core/constants/http.dart';
import 'package:team3_kakao/ui/widgets/chatting_items/profile_image.dart';

class OtherChat extends StatelessWidget {
  final String name;
  final String text;
  final String time;
  final int userId;

  const OtherChat(
      {Key? key,
      required this.name,
      required this.text,
      required this.time,
      required this.userId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProfileImage(
          imagePath: "$baseUrl/images/$userId.jpg",
          imageHeight: 40,
          imageWidth: 40,
          circular: 16,
        ),
        SizedBox(width: 10),
        Flexible(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: h5(color: basicColorB5),
                  ),
                  SizedBox(height: 4),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 4.0, horizontal: 8.0),
                      child: Text(text),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(width: 5),
              Text(
                time,
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
