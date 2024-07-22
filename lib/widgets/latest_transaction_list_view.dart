import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  static const List<UserInfoModel> users = [
    UserInfoModel(
        image: Assets.imagesAvatar1,
        name: "Madrani Andi",
        email: "Madraniadi20@gmail"),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        name: "Josua Nunito",
        email: "Josh Nunito@gmail.com"),
    UserInfoModel(
        image: Assets.imagesAvatar1,
        name: "Madrani Andi",
        email: "Madraniadi20@gmail"),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: users
            .map(
              (e) => IntrinsicWidth(
                child: UserInfoListTile(userInfoModel: e),
              ),
            )
            .toList(),
      ),
    );
    // return SizedBox(
    //   height: 80,
    //   // List View Lazyyyyyyyyy Builder
    //   child: ListView.builder(
    //       itemCount: users.length,
    //       scrollDirection: Axis.horizontal,
    //       itemBuilder: (context, index) {
    //         return IntrinsicWidth(
    //           child: Padding(
    //               padding: const EdgeInsets.only(right: 12),
    //               child: UserInfoListTile(userInfoModel: users[index])),
    //         );
    //       }),
    // );
  }
}
