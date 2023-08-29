import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MetodosRecord extends FirestoreRecord {
  MetodosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "precio" field.
  double? _precio;
  double get precio => _precio ?? 0.0;
  bool hasPrecio() => _precio != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _precio = castToType<double>(snapshotData['precio']);
    _descripcion = snapshotData['descripcion'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Metodos');

  static Stream<MetodosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MetodosRecord.fromSnapshot(s));

  static Future<MetodosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MetodosRecord.fromSnapshot(s));

  static MetodosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MetodosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MetodosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MetodosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MetodosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MetodosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMetodosRecordData({
  String? nombre,
  double? precio,
  String? descripcion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'precio': precio,
      'descripcion': descripcion,
    }.withoutNulls,
  );

  return firestoreData;
}

class MetodosRecordDocumentEquality implements Equality<MetodosRecord> {
  const MetodosRecordDocumentEquality();

  @override
  bool equals(MetodosRecord? e1, MetodosRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.precio == e2?.precio &&
        e1?.descripcion == e2?.descripcion;
  }

  @override
  int hash(MetodosRecord? e) =>
      const ListEquality().hash([e?.nombre, e?.precio, e?.descripcion]);

  @override
  bool isValidKey(Object? o) => o is MetodosRecord;
}
