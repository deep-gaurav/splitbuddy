import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class AutoScroll extends StatefulWidget {
  final Widget child;

  const AutoScroll({super.key, required this.child});

  @override
  State<AutoScroll> createState() => _AutoScrollState();
}

class _AutoScrollState extends State<AutoScroll>
    with SingleTickerProviderStateMixin {
  Duration lastStatus = Duration.zero;
  late Ticker _ticker;
  final ScrollController scrollController = ScrollController();

  bool increasing = true;

  @override
  void initState() {
    _ticker = createTicker((elapsed) {
      final int diff = (elapsed - lastStatus).inMilliseconds;
      try {
        if (scrollController.position.maxScrollExtent > 0) {
          var speed = 0.01;

          if (increasing) {
            var newVal = scrollController.position.pixels + speed * diff;
            if (newVal >= scrollController.position.maxScrollExtent) {
              increasing = !increasing;
            }
            scrollController.jumpTo(newVal);
          } else {
            var newVal = scrollController.position.pixels + (-speed * diff);
            if (newVal <= scrollController.position.minScrollExtent) {
              increasing = !increasing;
            }
            scrollController.jumpTo(newVal);
          }
        }
      } catch (e) {}
      lastStatus = elapsed;
    })
      ..start();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      controller: scrollController,
      child: widget.child,
    );
  }

  @override
  void dispose() {
    _ticker.dispose();
    super.dispose();
  }
}
