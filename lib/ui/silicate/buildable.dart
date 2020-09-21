import 'package:flutter_tex/flutter_tex.dart';

abstract class Buildable {
  TeXViewWidget Function() build;
}
