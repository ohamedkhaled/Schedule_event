import 'package:flutter/material.dart';
import 'package:scheduled_event/Core/Resours_Manger/Color_Manger.dart';
import 'package:scheduled_event/Core/Resours_Manger/Values_Manger.dart';
import 'package:scheduled_event/Core/utils/Config_Size.dart';
import '../../Core/utils/Methods.dart';

class CustomHeaderWidget extends StatelessWidget {
  final String time;

  const CustomHeaderWidget({required this.time, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: AppPadding.p20),
      child: Container(
        height: ConfigSize.defaultSize! * AppSize.s8,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Icon(
              Icons.schedule_outlined,
              size: AppSize.s60,
              color: ColorManager.primary,
            ),
            const SizedBox(
              width: AppSize.s12,
            ),
            Text(
              getDayNumber(time),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  getDay(time),
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text('${getMonth(time)} ${getYear(time)}',
                    style: Theme.of(context).textTheme.bodyMedium),
              ],
            )
          ],
        ),
      ),
    );
  }
}
