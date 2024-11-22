import 'package:siento_find_therapist/core/result.dart';

typedef Call<T> = Future<T> Function();

mixin RepositoryErrorHandler {
  Future<Result<T>> captureExceptions<T>(Call<T> call) async {
    try {
      final result = await call();
      return Result.success(data: result);
    } on Exception catch (error) {
      return Result.failure(error: error);
    }
  }
}
