import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BebidasCalientesRecord extends FirestoreRecord {
  BebidasCalientesRecord._(
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

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _precio = castToType<double>(snapshotData['precio']);
    _descripcion = snapshotData['descripcion'] as String?;
    _imagen = snapshotData['imagen'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('BebidasCalientes');

  static Stream<BebidasCalientesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BebidasCalientesRecord.fromSnapshot(s));

  static Future<BebidasCalientesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => BebidasCalientesRecord.fromSnapshot(s));

  static BebidasCalientesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BebidasCalientesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BebidasCalientesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BebidasCalientesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BebidasCalientesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BebidasCalientesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBebidasCalientesRecordData({
  String? nombre,
  double? precio,
  String? descripcion,
  String? imagen,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'precio': precio,
      'descripcion': descripcion,
      'imagen': imagen,
    }.withoutNulls,
  );

  return firestoreData;
}

class BebidasCalientesRecordDocumentEquality
    implements Equality<BebidasCalientesRecord> {
  const BebidasCalientesRecordDocumentEquality();

  @override
  bool equals(BebidasCalientesRecord? e1, BebidasCalientesRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.precio == e2?.precio &&
        e1?.descripcion == e2?.descripcion &&
        e1?.imagen == e2?.imagen;
  }

  @override
  int hash(BebidasCalientesRecord? e) => const ListEquality()
      .hash([e?.nombre, e?.precio, e?.descripcion, e?.imagen]);

  @override
  bool isValidKey(Object? o) => o is BebidasCalientesRecord;
}
