// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

//imports agregados
import 'dart:convert' show utf8;
import 'package:download/download.dart';

Future descargarCSV(List<ProductosRecord>? documento) async {
  documento = documento ?? [];

  // Add your function code here!
  String companyName = "Mels's Garden";
  String companyAddress = "Canoas, Alajuela, Costa Rica.";
  String header = "$companyName,$companyAddress\n\n";

  String fileContent = header + "Código, Nombre, Precio, Categoría";

  documento.asMap().forEach((index, record) => fileContent = fileContent +
      "\n" +
      record.codigo.toString() +
      "," +
      record.nombre.toString() +
      "," +
      record.precio.toString() +
      "," +
      record.categoria.toString());

  final fileName = "ControlInventario" + DateTime.now().toString() + ".csv";

  // Encode the string as a List<int> of UTF-8 bytes
  var bytes = utf8.encode(fileContent);

  final stream = Stream.fromIterable(bytes);
  return download(stream, fileName);
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
