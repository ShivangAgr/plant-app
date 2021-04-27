import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constants.dart';

class IconCard extends StatelessWidget {
  const IconCard({this.icon});

  final String icon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: size.height * 0.03,
      ),
      padding: EdgeInsets.all(kDefaultPadding / 2),
      height: 64,
      width: 64,
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 16),
            blurRadius: 20,
            color: kPrimaryColor.withOpacity(0.2),
          ),
          BoxShadow(
            offset: Offset(-16, -16),
            blurRadius: 20,
            color: Colors.white,
          )
        ],
      ),
      child: SvgPicture.asset(this.icon),
    );
  }
}
