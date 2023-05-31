import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RepliesRecord extends FirestoreRecord {
  RepliesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "postID" field.
  DocumentReference? _postID;
  DocumentReference? get postID => _postID;
  bool hasPostID() => _postID != null;

  // "replyUser" field.
  DocumentReference? _replyUser;
  DocumentReference? get replyUser => _replyUser;
  bool hasReplyUser() => _replyUser != null;

  // "replyMessage" field.
  String? _replyMessage;
  String get replyMessage => _replyMessage ?? '';
  bool hasReplyMessage() => _replyMessage != null;

  // "replyDate" field.
  DateTime? _replyDate;
  DateTime? get replyDate => _replyDate;
  bool hasReplyDate() => _replyDate != null;

  void _initializeFields() {
    _postID = snapshotData['postID'] as DocumentReference?;
    _replyUser = snapshotData['replyUser'] as DocumentReference?;
    _replyMessage = snapshotData['replyMessage'] as String?;
    _replyDate = snapshotData['replyDate'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('replies');

  static Stream<RepliesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RepliesRecord.fromSnapshot(s));

  static Future<RepliesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RepliesRecord.fromSnapshot(s));

  static RepliesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RepliesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RepliesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RepliesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RepliesRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createRepliesRecordData({
  DocumentReference? postID,
  DocumentReference? replyUser,
  String? replyMessage,
  DateTime? replyDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'postID': postID,
      'replyUser': replyUser,
      'replyMessage': replyMessage,
      'replyDate': replyDate,
    }.withoutNulls,
  );

  return firestoreData;
}
