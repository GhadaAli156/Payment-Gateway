import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class PaymentMethodItem extends StatelessWidget {
  final bool isActive;
  final String image;
  const PaymentMethodItem({super.key,this.isActive=false, required this.image});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: 103,
      height: 62,
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
              side: BorderSide(width: 1.50, color: isActive? const Color(0xff34A853):const Color(0x00000080)),
              borderRadius: BorderRadius.circular(15)),
          shadows: [
            BoxShadow(
                color: isActive ? const Color(0xff34A853):Colors.white,
                blurRadius: 4,
                offset: const Offset(0, 0),
                spreadRadius: 0)
          ]),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white
        ),
        child: Center(child: SvgPicture.asset(image,height: 24,fit: BoxFit.scaleDown,)),
      ),
    );
  }
}

