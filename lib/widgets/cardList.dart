import 'package:flutter/material.dart';
import 'package:jenniferlee/models/topics_model.dart';

class CardViewList extends StatefulWidget {
  final List<Topic> topic;

  CardViewList({this.topic});

  @override
  _CardViewListState createState() => _CardViewListState();
}

class _CardViewListState extends State<CardViewList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: widget.topic.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: MediaQuery.of(context).size.width /
              (MediaQuery.of(context).size.height / 1.8),
        ),
        itemBuilder: (BuildContext context, int index) {
          Topic subTopic = widget.topic[index];
          return GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => subTopic.page,
                )),
            child: Card(
              margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 24.0, horizontal: 24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      subTopic.icon,
                      color: Colors.amber,
                      size: 30,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Center(
                      child: Text(
                        subTopic.title,
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
