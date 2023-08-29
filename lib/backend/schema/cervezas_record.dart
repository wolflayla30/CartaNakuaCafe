import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CervezasRecord extends FirestoreRecord {
  CervezasRecord._(
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

  // "foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  bool hasFoto() => _foto != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _precio = castToType<double>(snapshotData['precio']);
    _foto = snapshotData['foto'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Cervezas');

  static Stream<CervezasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CervezasRecord.fromSnapshot(s));

  static Future<CervezasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CervezasRecord.fromSnapshot(s));

  static CervezasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CervezasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CervezasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CervezasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CervezasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CervezasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCervezasRecordData({
  String? nombre,
  double? precio,
  String? foto,
  String? descripcion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'precio': precio,
      'foto': foto,
      'descripcion': descripcion,
    }.withoutNulls,
  );

  return firestoreData;
}

class CervezasRecordDocumentEquality implements Equality<CervezasRecord> {
  const CervezasRecordDocumentEquality();

  @override
  bool equals(CervezasRecord? e1, CervezasRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.precio == e2?.precio &&
        e1?.foto == e2?.foto &&
        e1?.descripcion == e2?.descripcion;
  }

  @override
  int hash(CervezasRecord? e) => const ListEquality()
      .hash([e?.nombre, e?.precio, e?.foto, e?.descripcion]);

  @override
  bool isValidKey(Object? o) => o is CervezasRecord;
}
