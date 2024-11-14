import 'package:cloud_firestore/cloud_firestore.dart';

typedef ApiCall<T> = Future<T> Function();

mixin DatasourceErrorHandler {

  dynamic captureExceptions<T>(ApiCall<T> apiCall) {
    try {
      return apiCall();
    } on FirebaseException catch (error) {
      throw Exception('Failed with error: ${error.code} - ${error.message}');
    } on Exception catch (error) {
      throw Exception('Failed with error: $error');
    }
  }

}