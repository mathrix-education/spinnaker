import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/ui/layouts/loading_body.dart';

class PdfViewerBrick extends StatefulWidget {
  final Map<String, dynamic> brick;

  const PdfViewerBrick({this.brick});

  @override
  _PdfViewerBrickState createState() => _PdfViewerBrickState();
}

class _PdfViewerBrickState extends State<PdfViewerBrick> {
  PDFDocument _document;

  initState() {
    super.initState();
    print(widget.brick['url']);
    PDFDocument.fromURL(widget.brick['url']).then(((document) {
      setState(() {
        _document = document;
        print(_document);
      });
    }));
  }

  @override
  Widget build(BuildContext context) {
    return _document != null
        ? SizedBox(
            height: 600,
            child: PDFViewer(
              document: _document,
              showNavigation: true,
              showIndicator: false,
              showPicker: false,
              navigationBuilder: null, // WA until @https://github.com/lohanidamodar/pdf_viewer/pull/2 is merged
            ))
        : LoadingBody();
  }
}
