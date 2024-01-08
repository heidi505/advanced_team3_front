import 'package:flutter/material.dart';
import 'package:team3_kakao/ui/pages/main_page.dart';
import 'package:team3_kakao/ui/pages/user/join/join_check_page.dart';
import 'package:team3_kakao/ui/pages/user/join/join_password_page.dart';
import 'package:team3_kakao/ui/pages/user/join/join_profile_page.dart';

import '../../../_core/constants/color.dart';
import '../../../_core/constants/size.dart';
import '../../pages/user/join/join_welcome_page.dart';

class CheckPageButton extends StatelessWidget {
  String text;

  CheckPageButton({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: xsmallGap, bottom: xsmallGap),
      child: TextButton(
          onPressed: () {
            // 버튼 클릭 시 join_agree_page.dart로 이동
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => JoinCheckPage()),
            );
          },
          child: Text("$text")),
    );
  }
}

class PasswordPageButton extends StatelessWidget {
  String text;

  PasswordPageButton({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: xsmallGap, bottom: xsmallGap),
      child: TextButton(
          onPressed: () {
            // 버튼 클릭 시 join_agree_page.dart로 이동
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => JoinPassWordPage()),
            );
          },
          child: Text("$text")),
    );
  }
}

class ProfilePageButton extends StatelessWidget {
  String text;

  ProfilePageButton({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: xsmallGap, bottom: xsmallGap),
      child: TextButton(
          onPressed: () {
            // 버튼 클릭 시 join_agree_page.dart로 이동
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => JoinProfilePage()),
            );
          },
          child: Text("$text")),
    );
  }
}

class WelcomePageButton extends StatelessWidget {
  String text;

  WelcomePageButton({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: xsmallGap, bottom: xsmallGap),
      child: TextButton(
          onPressed: () {
            // 버튼 클릭 시 join_agree_page.dart로 이동
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => JoinWelcomePage()),
            );
          },
          child: Text("$text")),
    );
  }
}

class MainScreenButton extends StatelessWidget {
  String text;

  MainScreenButton({required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
        child:
        Padding(
          padding: const EdgeInsets.only(bottom: xmediumGap),
          child: TextButton(
              onPressed: () {
                // 버튼 클릭 시 join_agree_page.dart로 이동
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainPage()),
                );
              },
              child: Text("$text")),
        ),
    );
  }
}

// bottomNavigationBar: ProductDetailBottomSheet(
// funPageRoute: () {}, text: "구매하기", productId: widget.productId),
// );

class CheckErrorButton extends StatelessWidget {
  String text;

  CheckErrorButton({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: mediumGap, left: xsmallGap, bottom: mediumGap),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          "$text",
          style: TextStyle(fontSize: smallGap, decoration: TextDecoration.underline),
        ),
      ),
    );
  }
}


class RadioButtons extends StatefulWidget {
  @override
  _RadioButtonsState createState() => _RadioButtonsState();
}

class _RadioButtonsState extends State<RadioButtons> {
  String? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Radio(
              value: '남성',
              groupValue: selectedGender,
              onChanged: (value) {
                setState(() {
                  selectedGender = value;
                });
              },
              activeColor: primaryColor01,
            ),
            Text('남성'),
          ],
        ),
        Row(
          children: [
            Radio(
              value: '여성',
              groupValue: selectedGender,
              onChanged: (value) {
                setState(() {
                  selectedGender = value;
                });
              },
              activeColor: primaryColor01,
            ),
            Text('여성'),
          ],
        ),
        Row(
          children: [
            Radio(
              value: '선택안함',
              groupValue: selectedGender,
              onChanged: (value) {
                setState(() {
                  selectedGender = value;
                });
              },
              activeColor: primaryColor01,
            ),
            Text('선택안함'),
          ],
        ),
      ],
    );
  }
}