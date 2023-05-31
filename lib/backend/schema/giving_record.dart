import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GivingRecord extends FirestoreRecord {
  GivingRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "giverUser" field.
  DocumentReference? _giverUser;
  DocumentReference? get giverUser => _giverUser;
  bool hasGiverUser() => _giverUser != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  bool hasAmount() => _amount != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _giverUser = snapshotData['giverUser'] as DocumentReference?;
    _amount = castToType<double>(snapshotData['amount']);
    _date = snapshotData['date'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('giving')
          : FirebaseFirestore.instance.collectionGroup('giving');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('giving').doc();

  static Stream<GivingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GivingRecord.fromSnapshot(s));

  static Future<GivingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GivingRecord.fromSnapshot(s));

  static GivingRecord fromSnapshot(DocumentSnapshot snapshot) => GivingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GivingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GivingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GivingRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createGivingRecordData({
  DocumentReference? giverUser,
  double? amount,
  DateTime? date,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'giverUser': giverUser,
      'amount': amount,
      'date': date,
    }.withoutNulls,
  );

  return firestoreData;
}
