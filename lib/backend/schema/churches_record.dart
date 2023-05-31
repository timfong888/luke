import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChurchesRecord extends FirestoreRecord {
  ChurchesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "churchName" field.
  String? _churchName;
  String get churchName => _churchName ?? '';
  bool hasChurchName() => _churchName != null;

  // "streetAddress" field.
  String? _streetAddress;
  String get streetAddress => _streetAddress ?? '';
  bool hasStreetAddress() => _streetAddress != null;

  // "cityAddress" field.
  String? _cityAddress;
  String get cityAddress => _cityAddress ?? '';
  bool hasCityAddress() => _cityAddress != null;

  // "zipcode" field.
  String? _zipcode;
  String get zipcode => _zipcode ?? '';
  bool hasZipcode() => _zipcode != null;

  // "website" field.
  String? _website;
  String get website => _website ?? '';
  bool hasWebsite() => _website != null;

  void _initializeFields() {
    _churchName = snapshotData['churchName'] as String?;
    _streetAddress = snapshotData['streetAddress'] as String?;
    _cityAddress = snapshotData['cityAddress'] as String?;
    _zipcode = snapshotData['zipcode'] as String?;
    _website = snapshotData['website'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('churches');

  static Stream<ChurchesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChurchesRecord.fromSnapshot(s));

  static Future<ChurchesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChurchesRecord.fromSnapshot(s));

  static ChurchesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChurchesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChurchesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChurchesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChurchesRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createChurchesRecordData({
  String? churchName,
  String? streetAddress,
  String? cityAddress,
  String? zipcode,
  String? website,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'churchName': churchName,
      'streetAddress': streetAddress,
      'cityAddress': cityAddress,
      'zipcode': zipcode,
      'website': website,
    }.withoutNulls,
  );

  return firestoreData;
}
