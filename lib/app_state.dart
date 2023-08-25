import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  double _sumaProductos = 0;
  double get sumaProductos => _sumaProductos;
  set sumaProductos(double _value) {
    _sumaProductos = _value;
  }

  DateTime? _Fecha = DateTime.fromMillisecondsSinceEpoch(1692826680000);
  DateTime? get Fecha => _Fecha;
  set Fecha(DateTime? _value) {
    _Fecha = _value;
  }

  DocumentReference? _usuario;
  DocumentReference? get usuario => _usuario;
  set usuario(DocumentReference? _value) {
    _usuario = _value;
  }

  List<DocumentReference> _carrito = [];
  List<DocumentReference> get carrito => _carrito;
  set carrito(List<DocumentReference> _value) {
    _carrito = _value;
  }

  void addToCarrito(DocumentReference _value) {
    _carrito.add(_value);
  }

  void removeFromCarrito(DocumentReference _value) {
    _carrito.remove(_value);
  }

  void removeAtIndexFromCarrito(int _index) {
    _carrito.removeAt(_index);
  }

  void updateCarritoAtIndex(
    int _index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _carrito[_index] = updateFn(_carrito[_index]);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
