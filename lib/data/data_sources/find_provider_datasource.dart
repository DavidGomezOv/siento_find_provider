import 'dart:async';

import 'package:siento_find_provider/core/exceptions.dart';
import 'package:siento_find_provider/domain/models/provider_model.dart';
import 'package:http/http.dart' as http;
import 'package:cloud_firestore/cloud_firestore.dart';

typedef ApiCall<T> = Future<T> Function();

class FindProviderDatasource {
  Future<List<ProviderModel>> getProviders() async {
    return _captureExceptions(
      () async {
        final FirebaseFirestore db = FirebaseFirestore.instance;
        final CollectionReference providers = db.collection('providers');
        final QuerySnapshot<Object?> snapshot = await providers.get();
        return snapshot.docs.map(
          (element) {
            return ProviderModel.fromJson(
                element.data() as Map<String, dynamic>);
          },
        ).toList();
      },
    );
  }

  dynamic _captureExceptions<T>(ApiCall<T> apiCall) {
    try {
      return apiCall();
    } on TimeoutException catch (_) {
      throw NetworkException(message: 'Connection Timeout');
    } on http.ClientException catch (error) {
      throw Exception('Failed parsing json data: $error');
    }
  }
}
