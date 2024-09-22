import 'package:flutter/material.dart';
import 'package:klob_kb_apps/util/extensions/text_style_extensions.dart';

class AnimatedCounterText extends ImplicitlyAnimatedWidget {
  final int value;
  final int initialValue;

  const AnimatedCounterText({
    super.key,
    required this.value,
    required this.initialValue,
    required super.duration,
  });

  @override
  ImplicitlyAnimatedWidgetState<ImplicitlyAnimatedWidget> createState() =>
      _CounterTextState();
}

class _CounterTextState extends AnimatedWidgetBaseState<AnimatedCounterText> {
  late IntTween _counter;

  @override
  void initState() {
    _counter = IntTween(begin: widget.initialValue, end: widget.value);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _counter.evaluate(animation).toString(),
      style:
          Theme.of(context).textTheme.titleMedium?.bold.toColor(Colors.black),
    );
  }

  @override
  void forEachTween(TweenVisitor<dynamic> visitor) {
    _counter = visitor(
      _counter,
      widget.value,
      (dynamic value) => IntTween(begin: value),
    ) as IntTween;
  }
}
