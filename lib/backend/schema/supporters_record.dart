import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SupportersRecord extends FirestoreRecord {
  SupportersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "missionary" field.
  DocumentReference? _missionary;
  DocumentReference? get missionary => _missionary;
  bool hasMissionary() => _missionary != null;

  // "supportDate" field.
  DateTime? _supportDate;
  DateTime? get supportDate => _supportDate;
  bool hasSupportDate() => _supportDate != null;

  // "givingTotal" field.
  int? _givingTotal;
  int get givingTotal => _givingTotal ?? 0;
  bool hasGivingTotal() => _givingTotal != null;

  // "supporterRef" field.
  DocumentReference? _supporterRef;
  DocumentReference? get supporterRef => _supporterRef;
  bool hasSupporterRef() => _supporterRef != null;

  void _initializeFields() {
    _missionary = snapshotData['missionary'] as DocumentReference?;
    _supportDate = snapshotData['supportDate'] as DateTime?;
    _givingTotal = snapshotData['givingTotal'] as int?;
    _supporterRef = snapshotData['supporterRef'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('supporters');

  static Stream<SupportersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SupportersRecord.fromSnapshot(s));

  static Future<SupportersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SupportersRecord.fromSnapshot(s));

  static SupportersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SupportersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SupportersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SupportersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SupportersRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createSupportersRecordData({
  DocumentReference? missionary,
  DateTime? supportDate,
  int? givingTotal,
  DocumentReference? supporterRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'missionary': missionary,
      'supportDate': supportDate,
      'givingTotal': givingTotal,
      'supporterRef': supporterRef,
    }.withoutNulls,
  );

  return firestoreData;
}
