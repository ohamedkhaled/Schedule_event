import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:scheduled_event/Core/Resours_Manger/Color_Manger.dart';
import 'package:scheduled_event/Core/Resours_Manger/Values_Manger.dart';
import 'package:scheduled_event/Core/utils/Api_Helper/Constant_Api.dart';
import 'package:scheduled_event/Core/utils/Config_Size.dart';
import 'package:scheduled_event/Data/Model/User_Model.dart';
import 'package:scheduled_event/Domin/Entities/User_Entitie.dart';
import 'package:scheduled_event/Presentation/Components/Get_Circler_Widget.dart';
import 'package:scheduled_event/Presentation/dummy.dart';
import '../../Core/utils/Constant_App.dart';
import '../../Core/utils/Methods.dart';
import 'Cach_Image_Widget.dart';

class CustomCard extends StatelessWidget {
  final String image;
  final int spots;
  final String tagName;
  final String tagIcon;
  final String startDate;
  final String finshDate;
  final String eventName;
  final String address;
  final int price;
  final List<UserEntitie> Users;

  const CustomCard(
      {required this.tagName,
      required this.spots,
      required this.image,
      required this.tagIcon,
      required this.finshDate,
      required this.address,
      required this.eventName,
      required this.startDate,
      required this.price,
      required this.Users,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppPadding.p14),
      child: Container(
        width: ConfigSize.defaultSize! * AppSize.s30,
        height: ConfigSize.defaultSize! * AppSize.s43,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSize.s12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(AppSize.s0_5),
                spreadRadius: AppSize.s5,
                blurRadius: AppSize.s8,
                offset: Offset(
                    AppSize.s0, AppSize.s3), // changes position of shadow
              ),
            ],
            color: ColorManager.white),
        child: Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                      borderRadius:
                          BorderRadius.circular(AppSize.s8), // Image border
                      child: CachImageWidght(
                          url: image,
                          width: ConfigSize.defaultSize! * AppSize.s35,
                          height: ConfigSize.defaultSize! * AppSize.s25)),
                  Positioned(
                    bottom: AppSize.s6,
                    left: AppSize.s6,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: AppSize.s2,
                        horizontal: AppSize.s8,
                      ),
                      decoration: BoxDecoration(
                        color: ColorManager.white.withOpacity(AppSize.s0_8),
                        borderRadius: BorderRadius.circular(AppSize.s20),
                      ),
                      child: Text("$spots $spotsLeft",
                          style: Theme.of(context).textTheme.titleMedium,
                          textAlign: TextAlign.center),
                    ),
                  ),
                  Positioned(
                    top: AppSize.s6,
                    left: AppSize.s6,
                    child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: AppSize.s2,
                          horizontal: AppSize.s8,
                        ),
                        decoration: BoxDecoration(
                          color: ColorManager.white.withOpacity(AppSize.s0_8),
                          borderRadius: BorderRadius.circular(AppSize.s20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: AppSize.s3),
                              child: Container(
                                height: ConfigSize.defaultSize! * AppSize.s3,
                                width: ConfigSize.defaultSize! * AppSize.s3,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(AppSize.s20),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image:
                                          AssetImage("assets/icons/$tagIcon")),
                                ),
                              ),
                            ),
                            Text(tagName,
                                style: Theme.of(context).textTheme.bodyLarge,
                                textAlign: TextAlign.start),
                          ],
                        )),
                  ),
                ],
              ),
              Expanded(
                flex: 10,
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(getFormatDate(startDate),
                            style: Theme.of(context).textTheme.bodySmall),
                        Text(
                            eventName.length > AppSize.s24
                                ? '${eventName.substring(AppSize.s0.toInt(), AppSize.s22.toInt())}..'
                                : eventName,
                            style: Theme.of(context).textTheme.displayLarge),
                        Text(
                            address.length > AppSize.s70
                                ? '${address.substring(AppSize.s0.toInt(), AppSize.s70.toInt())}..'
                                : address,
                            style: Theme.of(context).textTheme.bodySmall),
                        Text(
                          '${getDayLeft(startDate, finshDate)}',
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: AppSize.s6,
                      right: AppSize.s6,
                      child: Column(
                        children: [
                          dummy[0].paymentMethod!
                              ? Row(
                                  children: [
                                    Icon(Icons.monetization_on,
                                        color: ColorManager.Scandry),
                                    Icon(Icons.payment_outlined,
                                        color: ColorManager.Scandry),
                                    Icon(Icons.payment_sharp,
                                        color: ColorManager.Scandry)
                                  ],
                                )
                              : Row(children: [
                                  Icon(Icons.monetization_on,
                                      color: ColorManager.Scandry)
                                ]),
                          price == 0
                              ? Text(
                                  "Free",
                                  style:
                                      Theme.of(context).textTheme.headlineLarge,
                                )
                              : Text(
                                  "$AED ${price.toDouble()}",
                                  style:
                                      Theme.of(context).textTheme.headlineLarge,
                                )
                        ],
                      ),
                    ),
                    for (int i = 0; i < Users.length; i++)
                      if (i < 12)
                        Positioned(
                            bottom: AppSize.s0,
                            child: GetCirclerWidget(
                                index: i,
                                image:
                                    ConstentApi().getImage(Users[i].imageKey!)))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
