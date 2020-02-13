import 'package:flutter/material.dart';

enum TimelineItemPosition { left, right, random }

class TimelineModel {
  final Icon icon;
  final Widget leading;
  final Color iconBackground;
  final Widget child;
  final TimelineItemPosition position;
  bool isFirst;
  bool isLast;

  TimelineModel(
    this.child, {
    this.icon,
    this.iconBackground,
    this.position = TimelineItemPosition.random,
    this.isFirst = false,
    this.isLast = false,
    this.leading,
  });

  @override
  bool operator ==(o) {
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    final TimelineModel typedOther = o;
    return icon == typedOther.icon &&
        iconBackground == typedOther.iconBackground &&
        child == typedOther.child &&
        isFirst == typedOther.isFirst &&
        isLast == typedOther.isLast &&
        position == typedOther.position;
  }

  @override
  int get hashCode =>
      hashValues(icon, iconBackground, child, position, isFirst, isLast);

  TimelineModel copyWith(
          {icon,
          iconBackground,
          child,
          position,
          isFirst,
          isLast,
          Widget leading}) =>
      TimelineModel(
        child ?? this.child,
        icon: icon ?? this.icon,
        iconBackground: iconBackground ?? this.iconBackground,
        position: position ?? this.position,
        isFirst: isFirst ?? this.isFirst,
        isLast: isLast ?? this.isLast,
        leading: leading ?? this.leading,
      );
}
