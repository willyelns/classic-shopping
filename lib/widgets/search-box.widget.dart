import 'package:flutter/material.dart';
import 'package:shopping/widgets/animated-input.widget.dart';

class SearchBox extends StatefulWidget {
  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox>
    with SingleTickerProviderStateMixin {
  bool menuOpened = false;
  AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        seconds: 1,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  void _checkAnimation() {
    !this.menuOpened ? this._controller.forward() : this._controller.reverse();

    this.menuOpened = !this.menuOpened;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        AnimatedInput(
          controller: _controller,
        ),
        Container(
          width: 50,
          child: Center(
            child: FlatButton(
              onPressed: _checkAnimation,
              child: AnimatedIcon(
                icon: AnimatedIcons.menu_close,
                progress: _controller,
                semanticLabel: 'Open Menu',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
