import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "churchRef" field.
  DocumentReference? _churchRef;
  DocumentReference? get churchRef => _churchRef;
  bool hasChurchRef() => _churchRef != null;

  // "role" field.
  DocumentReference? _role;
  DocumentReference? get role => _role;
  bool hasRole() => _role != null;

  // "groups" field.
  List<DocumentReference>? _groups;
  List<DocumentReference> get groups => _groups ?? const [];
  bool hasGroups() => _groups != null;

  // "userStreet" field.
  String? _userStreet;
  String get userStreet => _userStreet ?? '';
  bool hasUserStreet() => _userStreet != null;

  // "userCity" field.
  String? _userCity;
  String get userCity => _userCity ?? '';
  bool hasUserCity() => _userCity != null;

  // "userZip" field.
  String? _userZip;
  String get userZip => _userZip ?? '';
  bool hasUserZip() => _userZip != null;

  // "missionary" field.
  bool? _missionary;
  bool get missionary => _missionary ?? false;
  bool hasMissionary() => _missionary != null;

  // "mission_statement" field.
  String? _missionStatement;
  String get missionStatement => _missionStatement ?? '';
  bool hasMissionStatement() => _missionStatement != null;

  // "life_verse" field.
  String? _lifeVerse;
  String get lifeVerse => _lifeVerse ?? '';
  bool hasLifeVerse() => _lifeVerse != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _churchRef = snapshotData['churchRef'] as DocumentReference?;
    _role = snapshotData['role'] as DocumentReference?;
    _groups = getDataList(snapshotData['groups']);
    _userStreet = snapshotData['userStreet'] as String?;
    _userCity = snapshotData['userCity'] as String?;
    _userZip = snapshotData['userZip'] as String?;
    _missionary = snapshotData['missionary'] as bool?;
    _missionStatement = snapshotData['mission_statement'] as String?;
    _lifeVerse = snapshotData['life_verse'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  DocumentReference? churchRef,
  DocumentReference? role,
  String? userStreet,
  String? userCity,
  String? userZip,
  bool? missionary,
  String? missionStatement,
  String? lifeVerse,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'churchRef': churchRef,
      'role': role,
      'userStreet': userStreet,
      'userCity': userCity,
      'userZip': userZip,
      'missionary': missionary,
      'mission_statement': missionStatement,
      'life_verse': lifeVerse,
    }.withoutNulls,
  );

  return firestoreData;
}
