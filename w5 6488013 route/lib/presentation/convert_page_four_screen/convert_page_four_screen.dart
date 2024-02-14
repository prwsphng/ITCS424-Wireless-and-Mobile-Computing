import 'package:flutter/material.dart';
import 'package:prae_s_application3/core/app_export.dart';
import 'package:prae_s_application3/widgets/custom_elevated_button.dart';
import 'package:prae_s_application3/widgets/custom_icon_button.dart';

class ConvertPageFourScreen extends StatelessWidget {
  const ConvertPageFourScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 28.h, vertical: 32.v),
                child: Column(children: [
                  Padding(
                      padding: EdgeInsets.only(left: 9.h),
                      child: CustomIconButton(
                          height: 48.v,
                          width: 49.h,
                          alignment: Alignment.centerLeft,
                          child: CustomImageView(
                              imagePath: ImageConstant.imgFloatingIcon))),
                  SizedBox(height: 25.v),
                  SizedBox(
                      height: 135.v,
                      width: 247.h,
                      child: Stack(alignment: Alignment.bottomLeft, children: [
                        Align(
                            alignment: Alignment.topLeft,
                            child:
                                Text("EUR", style: theme.textTheme.titleLarge)),
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 9.h),
                                child: Text("1 USD  = 0.90 EUR",
                                    style: theme.textTheme.bodyMedium))),
                        Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                                height: 96.v,
                                width: 239.h,
                                child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Align(
                                          alignment: Alignment.center,
                                          child: Text("120.00",
                                              style: theme
                                                  .textTheme.displayLarge)),
                                      Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Container(
                                              height: 1.v,
                                              width: 227.h,
                                              margin:
                                                  EdgeInsets.only(bottom: 7.v),
                                              child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: SizedBox(
                                                            width: 227.h,
                                                            child: Divider())),
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: SizedBox(
                                                            width: 227.h,
                                                            child: Divider()))
                                                  ])))
                                    ]))),
                        CustomImageView(
                            imagePath: ImageConstant.imgTelevision,
                            height: 11.v,
                            width: 12.h,
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(left: 41.h, top: 9.v))
                      ])),
                  SizedBox(height: 17.v),
                  SizedBox(
                      height: 31.v,
                      width: 83.h,
                      child: Stack(alignment: Alignment.topCenter, children: [
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                height: 31.v,
                                width: 69.h,
                                decoration: BoxDecoration(
                                    color: theme.colorScheme.errorContainer,
                                    borderRadius:
                                        BorderRadius.circular(15.h)))),
                        CustomImageView(
                            imagePath: ImageConstant.imgRoro42,
                            height: 25.v,
                            width: 83.h,
                            alignment: Alignment.topCenter,
                            margin: EdgeInsets.only(top: 2.v))
                      ])),
                  SizedBox(height: 8.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 59.h),
                          child: Row(children: [
                            Text("USD", style: theme.textTheme.titleLarge),
                            CustomImageView(
                                imagePath: ImageConstant.imgTelevision,
                                height: 11.v,
                                width: 12.h,
                                margin: EdgeInsets.only(
                                    left: 6.h, top: 10.v, bottom: 4.v))
                          ]))),
                  SizedBox(
                      height: 91.v,
                      width: 227.h,
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        Align(
                            alignment: Alignment.center,
                            child: Text("133.17",
                                style: theme.textTheme.displayLarge)),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                                padding: EdgeInsets.only(bottom: 7.v),
                                child:
                                    SizedBox(width: 227.h, child: Divider())))
                      ])),
                  SizedBox(height: 74.v),
                  SizedBox(
                      height: 67.v,
                      width: 235.h,
                      child: Stack(alignment: Alignment.topLeft, children: [
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                                height: 44.v,
                                width: 234.h,
                                decoration: BoxDecoration(
                                    color: theme.colorScheme.onPrimary,
                                    borderRadius:
                                        BorderRadius.circular(15.h)))),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 80.h, top: 3.v),
                                child: Text("USD",
                                    style: theme.textTheme.titleLarge))),
                        CustomElevatedButton(
                            width: 234.h,
                            text: "Convert",
                            onPressed: () {
                              onTapConvert(context);
                            },
                            alignment: Alignment.topCenter)
                      ])),
                  SizedBox(height: 76.v),
                  Align(
                      alignment: Alignment.centerRight,
                      child: SizedBox(
                          height: 81.v,
                          width: 240.h,
                          child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgInfographic31,
                                    height: 37.v,
                                    width: 240.h,
                                    alignment: Alignment.topCenter),
                                Align(
                                    alignment: Alignment.bottomRight,
                                    child: Padding(
                                        padding: EdgeInsets.only(right: 7.h),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              SizedBox(
                                                  width: 117.h,
                                                  child: Text(
                                                      "Recommendation",
                                                      maxLines: 2,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: theme.textTheme
                                                          .titleSmall)),
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgArrow3,
                                                  height: 4.v,
                                                  width: 31.h,
                                                  margin: EdgeInsets.only(
                                                      left: 11.h,
                                                      top: 10.v,
                                                      bottom: 32.v))
                                            ])))
                              ]))),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Navigates to the convertPageThreeScreen when the action is triggered.
  onTapConvert(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.convertPageThreeScreen);
  }
}
