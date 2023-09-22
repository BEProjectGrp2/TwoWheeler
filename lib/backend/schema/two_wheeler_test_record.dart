import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TwoWheelerTestRecord extends FirestoreRecord {
  TwoWheelerTestRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Day" field.
  String? _day;
  String get day => _day ?? '';
  bool hasDay() => _day != null;

  // "Hours" field.
  double? _hours;
  double get hours => _hours ?? 0.0;
  bool hasHours() => _hours != null;

  void _initializeFields() {
    _day = snapshotData['Day'] as String?;
    _hours = castToType<double>(snapshotData['Hours']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('two_wheeler_test');

  static Stream<TwoWheelerTestRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TwoWheelerTestRecord.fromSnapshot(s));

  static Future<TwoWheelerTestRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TwoWheelerTestRecord.fromSnapshot(s));

  static TwoWheelerTestRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TwoWheelerTestRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TwoWheelerTestRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TwoWheelerTestRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TwoWheelerTestRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TwoWheelerTestRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTwoWheelerTestRecordData({
  String? day,
  double? hours,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Day': day,
      'Hours': hours,
    }.withoutNulls,
  );

  return firestoreData;
}

class TwoWheelerTestRecordDocumentEquality
    implements Equality<TwoWheelerTestRecord> {
  const TwoWheelerTestRecordDocumentEquality();

  @override
  bool equals(TwoWheelerTestRecord? e1, TwoWheelerTestRecord? e2) {
    return e1?.day == e2?.day && e1?.hours == e2?.hours;
  }

  @override
  int hash(TwoWheelerTestRecord? e) =>
      const ListEquality().hash([e?.day, e?.hours]);

  @override
  bool isValidKey(Object? o) => o is TwoWheelerTestRecord;
}
