import 'package:flutter/cupertino.dart';
import 'package:scheduled_event/Core/Resours_Manger/Color_Manger.dart';
import 'package:scheduled_event/Core/Resours_Manger/Values_Manger.dart';

class GetCirclerWidget extends StatelessWidget {
  final int index;
  final String image;

  const GetCirclerWidget({required this.index, required this.image, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: index * 10),
      child: Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(image)),
              border: Border.all(width: 1, color: ColorManager.white))),
    );
  }
}
