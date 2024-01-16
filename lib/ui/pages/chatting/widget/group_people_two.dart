import 'package:flutter/material.dart';
import 'package:team3_kakao/_core/constants/color.dart';
import 'package:team3_kakao/ui/widgets/chatting_items/profile_image.dart';

class GroupPeopleTwo extends StatelessWidget {
  const GroupPeopleTwo({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                child: ProfileImage(
                  imagePath: imagePath,
                  imageWidth: 28.0,
                  imageHeight: 28.0,
                  circular: 13.0,
                ),
              ),
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 3,
                    color: basicColorW,
                  ),
                  borderRadius: BorderRadius.circular(13.0),
                ),
                child: ProfileImage(
                  imagePath: imagePath,
                  imageWidth: 28.0,
                  imageHeight: 28.0,
                  circular: 13.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
