import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SubProductosRecord extends FirestoreRecord {
  SubProductosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Producto" field.
  DocumentReference? _producto;
  DocumentReference? get producto => _producto;
  bool hasProducto() => _producto != null;

  // "Cantidad" field.
  int? _cantidad;
  int get cantidad => _cantidad ?? 0;
  bool hasCantidad() => _cantidad != null;

  // "Subtotal" field.
  double? _subtotal;
  double get subtotal => _subtotal ?? 0.0;
  bool hasSubtotal() => _subtotal != null;

  // "Usuario" field.
  DocumentReference? _usuario;
  DocumentReference? get usuario => _usuario;
  bool hasUsuario() => _usuario != null;

  void _initializeFields() {
    _producto = snapshotData['Producto'] as DocumentReference?;
    _cantidad = castToType<int>(snapshotData['Cantidad']);
    _subtotal = castToType<double>(snapshotData['Subtotal']);
    _usuario = snapshotData['Usuario'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('SubProductos');

  static Stream<SubProductosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SubProductosRecord.fromSnapshot(s));

  static Future<SubProductosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SubProductosRecord.fromSnapshot(s));

  static SubProductosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SubProductosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SubProductosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SubProductosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SubProductosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SubProductosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSubProductosRecordData({
  DocumentReference? producto,
  int? cantidad,
  double? subtotal,
  DocumentReference? usuario,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Producto': producto,
      'Cantidad': cantidad,
      'Subtotal': subtotal,
      'Usuario': usuario,
    }.withoutNulls,
  );

  return firestoreData;
}

class SubProductosRecordDocumentEquality
    implements Equality<SubProductosRecord> {
  const SubProductosRecordDocumentEquality();

  @override
  bool equals(SubProductosRecord? e1, SubProductosRecord? e2) {
    return e1?.producto == e2?.producto &&
        e1?.cantidad == e2?.cantidad &&
        e1?.subtotal == e2?.subtotal &&
        e1?.usuario == e2?.usuario;
  }

  @override
  int hash(SubProductosRecord? e) => const ListEquality()
      .hash([e?.producto, e?.cantidad, e?.subtotal, e?.usuario]);

  @override
  bool isValidKey(Object? o) => o is SubProductosRecord;
}
