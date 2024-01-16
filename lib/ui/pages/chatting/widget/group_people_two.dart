import 'package:flutter/material.dart';
import 'package:team3_kakao/ui/widgets/chatting_items/profile_image.dart';

class GroupPeopleTwo extends StatelessWidget {
  const GroupPeopleTwo({
    super.key,
    required this.imagePath,
  });

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Wrap(
          runAlignment: WrapAlignment.center,
          verticalDirection: VerticalDirection.down,
          direction: Axis.horizontal,
          children: [
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: ProfileImage(
                  imagePath: imagePath,
                  imageWidth: 20.0,
                  imageHeight: 20.0,
                  circular: 8.0),
            ),
          ],
        ),
        Wrap(
          runAlignment: WrapAlignment.center,
          verticalDirection: VerticalDirection.down,
          direction: Axis.horizontal,
          children: [
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: ProfileImage(
                  imagePath: imagePath,
                  imageWidth: 20.0,
                  imageHeight: 20.0,
                  circular: 8.0),
            ),
          ],
        ),
      ],
    );
  }
}
