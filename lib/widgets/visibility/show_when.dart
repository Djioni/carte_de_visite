import 'package:flutter/material.dart';

class ShowWhen extends StatelessWidget {
  final Widget child;
  final bool condition;
  ShowWhen({this.child, this.condition});

  @override
  Widget build(BuildContext context) {
    return Opacity(opacity: this.condition ? 1.0 : 0.0, child: this.child);
  }
}


class RenderWhen extends StatelessWidget {
  final Widget child;
  final bool condition;
  RenderWhen({this.child,this.condition});

  @override
  Widget build(BuildContext context) {
    return this.condition ? this.child : Container();
  }
}

