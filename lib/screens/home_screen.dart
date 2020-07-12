import 'package:flutter/material.dart';
import 'package:responsive_app/screens/grid_list_screen.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    Map<String, bool> breakpoint = {
      "xs": screen.width < 600,
      "sm": screen.width > 600 && screen.width < 960,
      "md": screen.width > 960 && screen.width < 1264,
      "lg": screen.width > 1264 && screen.width < 1904,
      "xl": screen.width > 1904
    };
    return Scaffold(
      body: Column(children: [
        Expanded(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              !breakpoint['xs'] && !breakpoint['sm']
                  ? Flexible(
                      flex: 1,
                      child: ListView.builder(
                        itemCount: 6,
                        itemBuilder: (context, index) => ListTile(
                          title: Text('Screen $index'),
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(GridListScreen.routeName);
                          },
                        ),
                      ),
                    )
                  : SizedBox.shrink(),
              Container(
                width: !breakpoint['xs'] && !breakpoint['sm']
                    ? screen.width * 0.8
                    : screen.width,
                child: SafeArea(
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: ListView(
                      children: [
                        Text(
                          'Trending XS',
                          style: TextStyle(
                              fontSize: 32, fontWeight: FontWeight.w500),
                        ),
                        Container(
                          height: 300,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 15,
                            itemBuilder: (context, index) => Container(
                              decoration: BoxDecoration(
                                  color: Colors.cyan,
                                  borderRadius: BorderRadius.circular(15)),
                              margin: EdgeInsets.all(5),
                              height: 300,
                              width: 175,
                              child: Center(
                                child: Text(breakpoint['xs'].toString()),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'Top Picks LG',
                          style: TextStyle(
                              fontSize: 32, fontWeight: FontWeight.w500),
                        ),
                        Container(
                          height: 300,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 15,
                            itemBuilder: (context, index) => Container(
                              decoration: BoxDecoration(
                                  color: Colors.indigo,
                                  borderRadius: BorderRadius.circular(15)),
                              margin: EdgeInsets.all(5),
                              height: 300,
                              width: 175,
                              child: Center(
                                child: Text(breakpoint['lg'].toString()),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
