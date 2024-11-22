import 'dart:async';

import 'package:siento_find_therapist/data/datasource_error_handler.dart';
import 'package:siento_find_therapist/domain/models/therapist/therapist_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FindTherapistDatasource with DatasourceErrorHandler {
  Future<List<TherapistModel>> getTherapists() async {
    return captureExceptions<List<TherapistModel>>(
      () async {
        final FirebaseFirestore db = FirebaseFirestore.instance;
        final CollectionReference therapists = db.collection('providers');
        final QuerySnapshot<Object?> snapshot = await therapists.get();
        return snapshot.docs
            .map(
              (element) => TherapistModel.fromJson(element.data() as Map<String, dynamic>),
            )
            .toList();
      },
    );
  }
}
