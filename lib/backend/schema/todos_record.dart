import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TodosRecord extends FirestoreRecord {
  TodosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Hours" field.
  int? _hours;
  int get hours => _hours ?? 0;
  bool hasHours() => _hours != null;

  // "Day" field.
  int? _day;
  int get day => _day ?? 0;
  bool hasDay() => _day != null;

  void _initializeFields() {
    _hours = castToType<int>(snapshotData['Hours']);
    _day = castToType<int>(snapshotData['Day']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('todos');

  static Stream<TodosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TodosRecord.fromSnapshot(s));

  static Future<TodosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TodosRecord.fromSnapshot(s));

  static TodosRecord fromSnapshot(DocumentSnapshot snapshot) => TodosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TodosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TodosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TodosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TodosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTodosRecordData({
  int? hours,
  int? day,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Hours': hours,
      'Day': day,
    }.withoutNulls,
  );

  return firestoreData;
}

class TodosRecordDocumentEquality implements Equality<TodosRecord> {
  const TodosRecordDocumentEquality();

  @override
  bool equals(TodosRecord? e1, TodosRecord? e2) {
    return e1?.hours == e2?.hours && e1?.day == e2?.day;
  }

  @override
  int hash(TodosRecord? e) => const ListEquality().hash([e?.hours, e?.day]);

  @override
  bool isValidKey(Object? o) => o is TodosRecord;
}
