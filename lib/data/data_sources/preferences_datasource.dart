import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:siento_find_provider/data/datasource_error_handler.dart';
import 'package:siento_find_provider/domain/models/preferences/preference_model.dart';

class PreferencesDatasource with DatasourceErrorHandler {
  Future<PreferenceModel> getAllPreferences({required String userId}) async {
    return captureExceptions<PreferenceModel>(
      () async {
        final FirebaseFirestore db = FirebaseFirestore.instance;
        final CollectionReference collectionRef = db.collection('preferences');

        final QuerySnapshot<Object?> document =
            await collectionRef.where('userId', isEqualTo: userId).limit(1).get();
        final data = document.docs.first.data();

        return PreferenceModel.fromFirebaseJson(data as Map<String, dynamic>);
      },
    );
  }

  Future<bool> savePreference({required PreferenceModel preferenceModel}) async {
    return captureExceptions<bool>(
      () async {
        final FirebaseFirestore db = FirebaseFirestore.instance;
        final CollectionReference collectionRef = db.collection('preferences');

        final document =
            await collectionRef.where('userId', isEqualTo: preferenceModel.userId).limit(1).get();
        String docId = document.docs.first.id;

        if (docId.isNotEmpty) {
          return await collectionRef.doc(docId).update(preferenceModel.toFirebaseJson()).then(
                (value) => true,
                onError: (error) => throw (Exception(error)),
              );
        } else {
          return await collectionRef.add(preferenceModel.toFirebaseJson()).then(
                (value) => true,
                onError: (error) => throw (Exception(error)),
              );
        }
      },
    );
  }
}
