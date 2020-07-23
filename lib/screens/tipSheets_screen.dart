import 'package:flutter/material.dart';
import 'package:jenniferlee/models/topics_model.dart';

class TipSheetsPage extends StatefulWidget {
  @override
  _TipSheetsPageState createState() => _TipSheetsPageState();
}

class _TipSheetsPageState extends State<TipSheetsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.all(16.0),
          child: Center(
            child: Text(
              'What would you like to learn about?',
              style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: tipSheetsSubTopic.length,
            itemBuilder: (BuildContext context, int index) {
              Topic subTipSheetTopic = tipSheetsSubTopic[index];
              return GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TestPage(),
                    )),
                child: Card(
                  margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 24.0),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          tipSheetsSubTopic[index].icon,
                          color: Colors.amber,
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Text(
                          tipSheetsSubTopic[index].title,
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

// Sample test page for route
class TestPage extends StatefulWidget {
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: Text(
            'NIHAN',
            style: TextStyle(
                color: Theme.of(context).primaryColor,
                letterSpacing: 1.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Source Serif Pro'),
          ),
          centerTitle: true,
          elevation: 0.0,
          leading: BackButton(
            color: Theme.of(context).primaryColor,
          ),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Center(child: Text("TBA")),
//                YoutubePlayer(
//                  controller: _controller,
//                )
              ],
            ),
          ),
        ));
  }
}
