import 'package:siento_find_provider/core/result.dart';
import 'package:siento_find_provider/domain/models/provider/provider_model.dart';

abstract class FindProviderRepository {
  Future<Result<List<ProviderModel>>> getProviders();
}
