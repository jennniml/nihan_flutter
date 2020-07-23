import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

class PdfViewPage extends StatefulWidget {
  final String url;

  PdfViewPage({this.url});

  @override
  _PdfViewPageState createState() => _PdfViewPageState(url);
}

class _PdfViewPageState extends State<PdfViewPage> {
  bool _isLoading = true;
  PDFDocument _doc;
  String url;

  _PdfViewPageState(String url) {
    this.url = url;
  }

  @override
  void initState() {
    super.initState();
    _loadFromUrl();
  }

  void _loadFromUrl() async {
    setState(() {
      _isLoading = true;
    });
    _doc = await PDFDocument.fromURL(url);
    setState(() {
      _isLoading = false;
    });
  }

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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Flexible(
                flex: 8,
                child: _isLoading
                    ? CircularProgressIndicator()
                    : PDFViewer(
                        document: _doc,
                      ),
              )
            ],
          ),
        ));
  }
}
