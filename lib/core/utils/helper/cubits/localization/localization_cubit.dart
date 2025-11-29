import 'package:bloc/bloc.dart';
import 'package:responsive_fruits/core/constant/constant_string.dart';
import 'package:responsive_fruits/core/utils/functions/shared_preferance.dart';
import 'package:responsive_fruits/core/utils/helper/widgets/user_message.dart';

part 'localization_state.dart';

class LocalizationCubit extends Cubit<LocalizationState> {
  LocalizationCubit() : super(LocalizationInitial());

  Future<void> changeLanguage(String lang) async {
    final langsaved = SharedPreferance.getData<String>(
      ConstantString.languageCode,
    );

    if (langsaved != lang || langsaved == null) {
      await SharedPreferance.setData(
        key: ConstantString.languageCode,
        value: lang,
      );
      emit(LanguageChangedState(lang));
    } else {
      showUserMessage(message: "message");
    }
  }
}
