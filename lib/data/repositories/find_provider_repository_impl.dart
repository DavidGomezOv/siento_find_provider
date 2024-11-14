import 'package:siento_find_provider/core/result.dart';
import 'package:siento_find_provider/data/data_sources/find_provider_datasource.dart';
import 'package:siento_find_provider/domain/models/provider_model.dart';
import 'package:siento_find_provider/domain/repositories/find_provider_repository.dart';

class FindProviderRepositoryImpl implements FindProviderRepository {
  final FindProviderDatasource findProviderDatasource;

  FindProviderRepositoryImpl({required this.findProviderDatasource});

  @override
  Future<Result<List<ProviderModel>>> getProviders() async =>
      await _captureErrorsOnApiCall(
          apiCall: findProviderDatasource.getProviders());

  Future<Result<T>> _captureErrorsOnApiCall<T>({
    required Future<T> apiCall,
  }) async {
    try {
      final result = await apiCall;
      return Result.success(data: result);
    } on Exception catch (error) {
      return Result.failure(error: error);
    }
  }
}
