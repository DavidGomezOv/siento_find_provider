import 'package:siento_find_provider/core/result.dart';
import 'package:siento_find_provider/data/data_sources/find_provider_datasource.dart';
import 'package:siento_find_provider/data/repository_error_handler.dart';
import 'package:siento_find_provider/domain/models/provider/provider_model.dart';
import 'package:siento_find_provider/domain/repositories/find_provider_repository.dart';

class FindProviderRepositoryImpl with RepositoryErrorHandler implements FindProviderRepository {
  final FindProviderDatasource findProviderDatasource;

  FindProviderRepositoryImpl({required this.findProviderDatasource});

  @override
  Future<Result<List<ProviderModel>>> getProviders() => captureExceptions(
        () async {
          return await findProviderDatasource.getProviders();
        },
      );
}
