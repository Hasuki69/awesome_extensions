part of '../awesome_extensions.dart';

extension PaddingX on Widget {
  Widget paddingAll(double value, {Key? key}) {
    final padding = EdgeInsets.all(value);

    return isSliver()
        ? SliverPadding(
            key: key,
            padding: padding,
            sliver: this,
          )
        : Padding(
            key: key,
            padding: padding,
            child: this,
          );
  }

  Widget paddingFromViewPadding(
    ViewPadding padding,
    double devicePixelRatio, {
    Key? key,
  }) {
    final viewPadding = EdgeInsets.fromViewPadding(padding, devicePixelRatio);

    return isSliver()
        ? SliverPadding(
            key: key,
            padding: viewPadding,
            sliver: this,
          )
        : Padding(
            key: key,
            padding: viewPadding,
            child: this,
          );
  }

  Widget paddingLTRB(
    double left,
    double top,
    double right,
    double bottom, {
    Key? key,
  }) {
    final padding = EdgeInsets.fromLTRB(left, top, right, bottom);

    return isSliver()
        ? SliverPadding(
            key: key,
            padding: padding,
            sliver: this,
          )
        : Padding(
            key: key,
            padding: padding,
            child: this,
          );
  }

  Widget paddingOnly({
    double left = 0.0,
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
    Key? key,
  }) {
    final padding = EdgeInsets.only(left: left, top: top, right: right, bottom: bottom);

    return isSliver()
        ? SliverPadding(
            padding: padding,
            sliver: this,
          )
        : Padding(
            key: key,
            padding: padding,
            child: this,
          );
  }

  Widget paddingSymmetric({double vert = 0.0, double horiz = 0.0, Key? key}) {
    final padding = EdgeInsets.symmetric(vertical: vert, horizontal: horiz);

    return isSliver()
        ? SliverPadding(
            key: key,
            padding: padding,
            sliver: this,
          )
        : Padding(
            key: key,
            padding: padding,
            child: this,
          );
  }
}
