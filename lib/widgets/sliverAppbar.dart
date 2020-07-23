import 'package:flutter/material.dart';

class CollapsingAppbar extends StatefulWidget {
  @override
  _CollapsingAppbarState createState() => _CollapsingAppbarState();
}

class _CollapsingAppbarState extends State<CollapsingAppbar> {
  var top = 0.0;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      expandedHeight: 150.0,
      floating: false,
      pinned: true,
      leading: IconButton(
          icon: Icon(Icons.menu),
          color: Theme.of(context).primaryColor,
          onPressed: () {
            // Do something
          }),
      flexibleSpace: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          top = constraints.biggest.height;
          return FlexibleSpaceBar(
            centerTitle: true,
            title: AnimatedOpacity(
              duration: Duration(milliseconds: 300),
              opacity: 1.0,
              child: Text(
                top < 120 ? 'NIHAN' : "",
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto Slab'),
              ),
            ),
            background: Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: SafeArea(
                child: Image.asset(
                  'assets/images/nihanlogo.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
