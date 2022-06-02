import 'dart:async';

import 'package:flutter/services.dart';

class PdfMerge {
  static const MethodChannel _channel = const MethodChannel('pdf_merge');

  static Future<String> mergePDF(
      {required List<String> paths, required String outputDirPath}) async {
    // Mapping the path to <key, value>

    final Map<String, dynamic> params = <String, dynamic>{
      'paths': paths,
      'outputDirPath': outputDirPath
    };

    final String pdfPath = await _channel.invokeMethod('PdfMerger', params);
    return pdfPath;
  }
}
