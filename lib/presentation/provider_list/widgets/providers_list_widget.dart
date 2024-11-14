import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:siento_find_provider/presentation/provider_list/widgets/provider_list_item_widget.dart';
import 'package:siento_find_provider/routes/app_router.dart';
import 'package:siento_find_provider/shared/find_provider_di_helper.dart';

class ProvidersListWidget extends ConsumerStatefulWidget {
  const ProvidersListWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProvidersListState();
}

class _ProvidersListState extends ConsumerState<ProvidersListWidget> {
  @override
  void initState() {
    super.initState();
    Future(() {
      ref.read(notifierProvider.notifier).getProvidersList();
    });
  }

  @override
  Widget build(BuildContext context) {
    final provider = ref.watch(notifierProvider);
    return provider.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      loaded: (_, filteredList, __) => ListView.builder(
        itemCount: filteredList.length,
        itemBuilder: (context, index) => ProviderListItemWidget(
          currentProvider: filteredList[index],
          onTap: () {
            context.goNamed(
              AppRouter.providerDetailRouteData.name,
              extra: filteredList[index],
            );
          },
        ),
      ),
      failedToLoad: (errorMessage) => Text(errorMessage),
    );
  }
}
