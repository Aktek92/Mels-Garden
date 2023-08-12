import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TipsRecord extends FirestoreRecord {
  TipsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  void _initializeFields() {
    _imagen = snapshotData['imagen'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tips');

  static Stream<TipsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TipsRecord.fromSnapshot(s));

  static Future<TipsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TipsRecord.fromSnapshot(s));

  static TipsRecord fromSnapshot(DocumentSnapshot snapshot) => TipsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TipsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TipsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TipsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TipsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTipsRecordData({
  String? imagen,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'imagen': imagen,
    }.withoutNulls,
  );

  return firestoreData;
}

class TipsRecordDocumentEquality implements Equality<TipsRecord> {
  const TipsRecordDocumentEquality();

  @override
  bool equals(TipsRecord? e1, TipsRecord? e2) {
    return e1?.imagen == e2?.imagen;
  }

  @override
  int hash(TipsRecord? e) => const ListEquality().hash([e?.imagen]);

  @override
  bool isValidKey(Object? o) => o is TipsRecord;
}
