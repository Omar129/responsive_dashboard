import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key, required this.image, this.imageBackground, this.imageColor});
  final String image;

  final Color? imageBackground, imageColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                // padding: const EdgeInsets.all(14),
                decoration: ShapeDecoration(
                    shape: const OvalBorder(),
                    color: imageBackground ?? const Color(0xFFFAFAFA)),
                child: Center(
                  child: SvgPicture.asset(
                    image,
                    colorFilter: ColorFilter.mode(
                        imageColor ?? const Color(0xff4EB7F2), BlendMode.srcIn),
                  ),
                ),
              ),
            ),
          ),
        ),
        Transform.rotate(
            angle: -1.57079633 * 2,
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
              color:
                  imageColor == null ? const Color(0xFF064061) : Colors.white,
            )),
      ],
    );
  }
}
