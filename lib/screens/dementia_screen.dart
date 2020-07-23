import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jenniferlee/models/topics_model.dart';
import 'file:///C:/Users/jennn/AndroidStudioProjects/nihan_flutter/lib/widgets/pdf_viewer.dart';
import 'package:jenniferlee/widgets/sliverAppbar.dart';

class DementiaPage extends StatefulWidget {
  @override
  _DementiaPageState createState() => _DementiaPageState();
}

class _DementiaPageState extends State<DementiaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            CollapsingAppbar(),
          ];
        },
        body: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: Center(
                child: Text(
                  'Dementia',
                  style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: dementiaTopic.length,
                itemBuilder: (BuildContext context, int index) {
                  PdfTopic subDementiaTopic = dementiaTopic[index];
                  return GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              PdfViewPage(url: subDementiaTopic.url),
                        )),
                    child: Card(
                      margin:
                          EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 24.0),
                        child: Text(
                          dementiaTopic[index].title,
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
