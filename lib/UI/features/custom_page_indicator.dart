// ignore_for_file: invalid_use_of_protected_member

import 'package:flutter/material.dart';

class CustomTabPageIndicator extends StatelessWidget {
  const CustomTabPageIndicator({
    Key? key,
    required this.backgroundColor,
    required this.borderColor,
    required this.width,
    this.borderStyle = BorderStyle.solid,
  }) : super(key: key);

  /// The indicator circle's background color.
  final Color backgroundColor;

  /// The indicator circle's border color.
  final Color borderColor;

  /// The indicator circle's diameter.
  final double width;

  /// The indicator circle's border style.
  ///
  /// Defaults to [BorderStyle.solid] if value is not specified.
  final BorderStyle borderStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 15,
      margin: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: borderColor, style: borderStyle),
        shape: BoxShape.rectangle,
      ),
    );
  }
}

class CustomTabPageSelector extends StatelessWidget {
  /// Creates a compact widget that indicates which tab has been selected.
  const CustomTabPageSelector({
    Key? key,
    this.controller,
    required this.width,
    this.selectedWidth,
    this.color,
    this.selectedColor,
    this.borderStyle,
  }) : super(key: key);

  /// This widget's selection and animation state.
  ///
  /// If [TabController] is not provided, then the value of
  /// [DefaultTabController.of] will be used.
  final TabController? controller;

  /// The indicator circle's diameter (the default value is 12.0).

  final double width;
  final double? selectedWidth;

  /// The indicator circle's fill color for unselected pages.
  ///
  /// If this parameter is null, then the indicator is filled with [Colors.transparent].
  final Color? color;

  /// The indicator circle's fill color for selected pages and border color
  /// for all indicator circles.
  ///
  /// If this parameter is null, then the indicator is filled with the theme's
  /// [ColorScheme.secondary].
  final Color? selectedColor;

  /// The indicator circle's border style.
  ///
  /// Defaults to [BorderStyle.solid] if value is not specified.
  final BorderStyle? borderStyle;

  double _indexChangeProgress(TabController controller) {
    final double controllerValue = controller.animation!.value;
    final double previousIndex = controller.previousIndex.toDouble();
    final double currentIndex = controller.index.toDouble();

    // The controller's offset is changing because the user is dragging the
    // TabBarView's PageView to the left or right.
    if (!controller.indexIsChanging) {
      return (currentIndex - controllerValue).abs().clamp(0.0, 1.0);
    }

    // The TabController animation's value is changing from previousIndex to currentIndex.
    return (controllerValue - currentIndex).abs() /
        (currentIndex - previousIndex).abs();
  }

  Widget _buildTabIndicator(
      int tabIndex,
      TabController tabController,
      ColorTween selectedColorTween,
      ColorTween previousColorTween,
      Tween<double> selectedWidthTween,
      Tween<double> previousWidthTween) {
    final Color background;
    final double widthTween;
    if (tabController.indexIsChanging) {
      // The selection's animation is animating from previousValue to value.
      final double t = 1.0 - _indexChangeProgress(tabController);
      if (tabController.index == tabIndex) {
        background = selectedColorTween.lerp(t)!;
        widthTween = selectedWidthTween.lerp(t);
      } else if (tabController.previousIndex == tabIndex) {
        background = previousColorTween.lerp(t)!;
        widthTween = previousWidthTween.lerp(t);
      } else {
        background = selectedColorTween.begin!;
        widthTween = selectedWidthTween.begin!;
      }
    } else {
      // The selection's offset reflects how far the TabBarView has / been dragged
      // to the previous page (-1.0 to 0.0) or the next page (0.0 to 1.0).
      final double offset = tabController.offset;
      if (tabController.index == tabIndex) {
        background = selectedColorTween.lerp(1.0 - offset.abs())!;
        widthTween = selectedWidthTween.lerp(1.0 - offset.abs());
      } else if (tabController.index == tabIndex - 1 && offset > 0.0) {
        background = selectedColorTween.lerp(offset)!;
        widthTween = selectedWidthTween.lerp(offset);
      } else if (tabController.index == tabIndex + 1 && offset < 0.0) {
        background = selectedColorTween.lerp(-offset)!;
        widthTween = selectedWidthTween.lerp(-offset);
      } else {
        background = selectedColorTween.begin!;
        widthTween = selectedWidthTween.begin!;
      }
    }
    return CustomTabPageIndicator(
      backgroundColor: background,
      borderColor: selectedColorTween.end!,
      width: widthTween,
      borderStyle: borderStyle ?? BorderStyle.solid,
    );
  }

  @override
  Widget build(BuildContext context) {
    if (selectedWidth != null && selectedWidth! < width) selectedWidth == width;
    final Color fixColor = color ?? Colors.transparent;
    final Color fixSelectedColor =
        selectedColor ?? Theme.of(context).colorScheme.secondary;
    final ColorTween selectedColorTween =
        ColorTween(begin: fixColor, end: fixSelectedColor);
    final ColorTween previousColorTween =
        ColorTween(begin: fixSelectedColor, end: fixColor);
    final Tween<double> selectedWidthTween =
        Tween(begin: width, end: selectedWidth ?? width + 20);
    final Tween<double> previousWidthTween =
        Tween(begin: selectedWidth ?? width + 20, end: width);
    final TabController? tabController =
        controller ?? DefaultTabController.of(context);
    final MaterialLocalizations localizations =
        MaterialLocalizations.of(context);
    assert(() {
      if (tabController == null) {
        throw FlutterError(
          'No TabController for $runtimeType.\n'
          'When creating a $runtimeType, you must either provide an explicit TabController '
          'using the "controller" property, or you must ensure that there is a '
          'DefaultTabController above the $runtimeType.\n'
          'In this case, there was neither an explicit controller nor a default controller.',
        );
      }
      return true;
    }());
    final Animation<double> animation = CurvedAnimation(
      parent: tabController!.animation!,
      curve: Curves.fastOutSlowIn,
    );
    return AnimatedBuilder(
      animation: animation,
      builder: (BuildContext context, Widget? child) {
        return Semantics(
          label: localizations.tabLabel(
              tabIndex: tabController.index + 1,
              tabCount: tabController.length),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children:
                List<Widget>.generate(tabController.length, (int tabIndex) {
              return _buildTabIndicator(
                  tabIndex,
                  tabController,
                  selectedColorTween,
                  previousColorTween,
                  selectedWidthTween,
                  previousWidthTween);
            }).toList(),
          ),
        );
      },
    );
  }
}
