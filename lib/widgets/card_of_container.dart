import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class ContainerOfCard extends StatelessWidget {
  const ContainerOfCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 420 / 215,
        child: Container(
          padding: const EdgeInsets.all(24),
          decoration: ShapeDecoration(
              image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(Assets.imagesCardBackground)),
              color: const Color(0xFF4EB7F2),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Name card",
                    style: AppStyles.styleRegular16(context)
                        .copyWith(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Syah Bandi",
                    style: AppStyles.styleMedium20(context),
                  ),
                ],
              ),
              Positioned(
                top: 0,
                right: 0,
                child: SvgPicture.asset(Assets.imagesGallery),
              ),
              Positioned(
                  right: 0,
                  bottom: 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "0918 8124 0042 8129",
                        style: AppStyles.styleSemiBold24(context)
                            .copyWith(color: Colors.white),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        "12/20 - 124",
                        style: AppStyles.styleRegular16(context)
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ))
            ],
          ),
        ));
  }
}
