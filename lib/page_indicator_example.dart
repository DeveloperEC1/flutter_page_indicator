import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';

class PageIndicatorExample extends StatefulWidget {
  PageIndicatorExample({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<PageIndicatorExample> {
  PageController controller;

  @override
  void initState() {
    super.initState();

    controller = PageController();
  }

  @override
  void dispose() {
    super.dispose();

    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: PageIndicatorContainer(
        indicatorSelectorColor: Color(0xff2cbbba),
        indicatorColor: Color(0xffa2e2e2),
        child: PageView(
          children: <Widget>[
            Center(
              child: Text('Page one'),
            ),
            Center(
              child: Text('Page two'),
            ),
            Center(
              child: Text('Page three'),
            ),
          ],
          controller: controller,
        ),
        align: IndicatorAlign.bottom,
        length: 3,
        indicatorSpace: 13.0,
      ),
    );
  }
}
