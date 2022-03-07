import 'package:flutter_triple/flutter_triple.dart';
import 'package:nasa_clean_arch/core/adapters/custom_either_adapter.dart';
import 'package:nasa_clean_arch/core/usecase/errors/failures.dart';
import 'package:nasa_clean_arch/features/domain/entities/spaces_media_entity.dart';
import 'package:nasa_clean_arch/features/domain/usecases/get_space_media_from_date_usecase.dart';

class HomeStore extends NotifierStore<Failure, SpaceMediaEntity> {
  final GetSpaceMediaFromDateUsecase usecase;

  HomeStore(this.usecase)
      : super(const SpaceMediaEntity(
          description: '',
          mediaType: '',
          title: '',
          mediaUrl: null,
        ));

  Future<void> getSpaceMediaFromDate(DateTime? date) async {
    executeEither(() => CustomEitherAdapter.adapter(usecase(date)));
  }
}
