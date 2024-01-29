import 'package:flutter/material.dart';

import 'curved_edges.dart';

class TCurvedEdgeWigdet extends StatelessWidget {
  const TCurvedEdgeWigdet({
    super.key, this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
        clipper: TCustomCurvedEdges(),
        child: child
    );
  }
}