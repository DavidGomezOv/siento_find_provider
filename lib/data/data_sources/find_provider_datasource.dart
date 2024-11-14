import 'dart:async';

import 'package:siento_find_provider/data/datasource_error_handler.dart';
import 'package:siento_find_provider/domain/models/provider/provider_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FindProviderDatasource with DatasourceErrorHandler {
  Future<List<ProviderModel>> getProviders() async {
    return captureExceptions<List<ProviderModel>>(
      () async {
        final FirebaseFirestore db = FirebaseFirestore.instance;
        final CollectionReference providers = db.collection('providers');
        final QuerySnapshot<Object?> snapshot = await providers.get();
        return snapshot.docs
            .map(
              (element) => ProviderModel.fromJson(element.data() as Map<String, dynamic>),
            )
            .toList();
      },
    );
  }
}
