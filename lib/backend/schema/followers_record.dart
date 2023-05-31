import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FollowersRecord extends FirestoreRecord {
  FollowersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "followerUserId" field.
  DocumentReference? _followerUserId;
  DocumentReference? get followerUserId => _followerUserId;
  bool hasFollowerUserId() => _followerUserId != null;

  // "dateFollow" field.
  DateTime? _dateFollow;
  DateTime? get dateFollow => _dateFollow;
  bool hasDateFollow() => _dateFollow != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _followerUserId = snapshotData['followerUserId'] as DocumentReference?;
    _dateFollow = snapshotData['dateFollow'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('followers')
          : FirebaseFirestore.instance.collectionGroup('followers');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('followers').doc();

  static Stream<FollowersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FollowersRecord.fromSnapshot(s));

  static Future<FollowersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FollowersRecord.fromSnapshot(s));

  static FollowersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FollowersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FollowersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FollowersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FollowersRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createFollowersRecordData({
  DocumentReference? followerUserId,
  DateTime? dateFollow,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'followerUserId': followerUserId,
      'dateFollow': dateFollow,
    }.withoutNulls,
  );

  return firestoreData;
}
