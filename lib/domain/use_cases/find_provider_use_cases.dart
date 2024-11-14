import 'package:siento_find_provider/core/result.dart';
import 'package:siento_find_provider/domain/models/provider_model.dart';
import 'package:siento_find_provider/domain/repositories/find_provider_repository.dart';

class GetProvidersUseCase {
  final FindProviderRepository findProviderRepository;

  GetProvidersUseCase({required this.findProviderRepository});

  Future<Result<List<ProviderModel>>> call() =>
      findProviderRepository.getProviders();
}
