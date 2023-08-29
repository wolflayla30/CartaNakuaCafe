import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TortasPostresRecord extends FirestoreRecord {
  TortasPostresRecord._(
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

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  // "Descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _precio = castToType<double>(snapshotData['precio']);
    _imagen = snapshotData['imagen'] as String?;
    _descripcion = snapshotData['Descripcion'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('TortasPostres');

  static Stream<TortasPostresRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TortasPostresRecord.fromSnapshot(s));

  static Future<TortasPostresRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TortasPostresRecord.fromSnapshot(s));

  static TortasPostresRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TortasPostresRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TortasPostresRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TortasPostresRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TortasPostresRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TortasPostresRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTortasPostresRecordData({
  String? nombre,
  double? precio,
  String? imagen,
  String? descripcion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'precio': precio,
      'imagen': imagen,
      'Descripcion': descripcion,
    }.withoutNulls,
  );

  return firestoreData;
}

class TortasPostresRecordDocumentEquality
    implements Equality<TortasPostresRecord> {
  const TortasPostresRecordDocumentEquality();

  @override
  bool equals(TortasPostresRecord? e1, TortasPostresRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.precio == e2?.precio &&
        e1?.imagen == e2?.imagen &&
        e1?.descripcion == e2?.descripcion;
  }

  @override
  int hash(TortasPostresRecord? e) => const ListEquality()
      .hash([e?.nombre, e?.precio, e?.imagen, e?.descripcion]);

  @override
  bool isValidKey(Object? o) => o is TortasPostresRecord;
}
