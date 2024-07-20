import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prayer_app/view/home/nav_bar_screens/quran/core/utils/constants_manager.dart';
import 'package:prayer_app/view/home/nav_bar_screens/quran/features/quran_audio/domain/entities/recitations_entity.dart';
import 'package:prayer_app/view/home/nav_bar_screens/quran/features/quran_audio/presentation/controller/recitations_cubit/recitations_state.dart';

import '../../../../../core/error/failure.dart';
import '../../../../../core/usecases/usecase.dart';
import '../../../domain/usecases/recitations_usecase.dart';

class RecitationsCubit extends Cubit<RecitationsState> {
  final RecitationsUsecase recitationsUsecase;

  RecitationsCubit({required this.recitationsUsecase})
      : super(RecitationsInitial());

  static RecitationsCubit get(context) => BlocProvider.of(context);

  getRecitationsFun() async {
    AppConstants.reciterName = '';

    emit(GetRecitationsLoadingState());

    Either<Failure, RecitationsEntity> response =
        await recitationsUsecase(NoParams());
    response.fold(
        (failure) => emit(GetRecitationsErrorState(error: failure.message)),
        (recitationsEntity) => emit(
            GetRecitationsSuccessState(recitationsEntity: recitationsEntity)));
  }
}
