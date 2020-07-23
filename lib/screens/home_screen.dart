import 'package:flutter/material.dart';
import 'package:jenniferlee/models/topics_model.dart';
import 'package:jenniferlee/widgets/cardList.dart';
import 'package:jenniferlee/widgets/sliverAppbar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            CollapsingAppbar(),
          ];
        },
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                style: TextStyle(fontSize: 17),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20.0),
                child: Center(
                  child: Text(
                    'What would you like to learn about?',
                    style:
                        TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              CardViewList(topic: topics)
            ],
          ),
        ),
      ),
    );
  }
}

// Old layout of app with tabs under the app bar
class TabTopics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: topics.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: Text(
            'NIHAN',
            style: TextStyle(
                color: Theme.of(context).primaryColor,
                letterSpacing: 1.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto Slab'),
          ),
          centerTitle: true,
          elevation: 0.0,
          bottom: TabBar(
            labelColor: Theme.of(context).primaryColor,
            labelPadding: EdgeInsets.symmetric(horizontal: 1.0),
            unselectedLabelColor: Theme.of(context).primaryColor,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.amber[400]),
            labelStyle: TextStyle(
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5,
                fontFamily: 'Montserrat'),
            tabs: topics.map((Topic topic) {
              return Tab(
                text: topic.title,
                icon: Icon(
                  topic.icon,
                  size: 26.0,
                ),
              );
            }).toList(),
          ),
        ),
        body: TabBarView(
          children: topics.map((Topic topic) {
            return topic.page;
          }).toList(),
        ),
      ),
    );
  }
}
