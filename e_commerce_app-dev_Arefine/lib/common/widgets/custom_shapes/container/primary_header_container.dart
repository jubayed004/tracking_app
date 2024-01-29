import 'package:e_commerce_app/common/widgets/custom_shapes/curved_edges/curved_edge_widget.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

import 'circular_container.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({
    super.key, required this.child,
  });
 final Widget child;
  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWigdet(
      child: Container(
        color: TColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              /// Background Custom Shapes
              Positioned(
                  top: -150,
                  right: -250,
                  child: TCircularContainer(backgroundColor: TColors.textWhite.withOpacity(0.1),)),
              Positioned(
                  top: 100,
                  right: -300,
                  child: TCircularContainer(backgroundColor: TColors.textWhite.withOpacity(0.1),)),
               child,
            ],
          ),
        ),
      ),
    );
  }
}