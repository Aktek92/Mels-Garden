import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

String urlWhatsApp(
  String nombre,
  String precio,
  String cant,
) {
  String link =
      "https://wa.me/50661407837?text=Me%20gustaría%20saber%20más%20sobre%20" +
          nombre +
          "%20y%20su%20precio%20₡:%20" +
          precio +
          "%20y%20su%20cantidad%20" +
          cant;

  return link;
}

double sumarSubtotal(
  double valorSubtotal,
  double precio,
) {
  valorSubtotal = valorSubtotal + precio;

  return valorSubtotal;
}

double restarSubtotal(
  double precio,
  double valorSubtotal,
) {
  if (valorSubtotal > 0) {
    valorSubtotal = valorSubtotal - precio;
  }

  return valorSubtotal;
}

double calcularSubtotal(
  double precio,
  int cantidad,
) {
  return (precio * cantidad);
}

double totalList(List<double> subtotal) {
  // check for errors and give me posibble solutions
  double total = 0;
  List<double> totalList = [];
  for (int i = 0; i < subtotal.length; i++) {
    total += subtotal[i];
    totalList.add(total);
  }
  return total;
}

double restarPrecioLista(double precio) {
  return precio * -1;
}
