import '../../../core/app_export.dart';
import 'sixtythree_item_model.dart';

/// This class defines the variables used in the [tournament_three_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TournamentThreeModel {
  Rx<List<SixtythreeItemModel>> sixtythreeItemList = Rx([
    SixtythreeItemModel(level3Text: "Level 3".obs),
    SixtythreeItemModel(level3Text: "Level 4".obs),
    SixtythreeItemModel(level3Text: "Level 5".obs),
    SixtythreeItemModel(level3Text: "Level 6".obs),
    SixtythreeItemModel(level3Text: "Level 7".obs),
    SixtythreeItemModel(level3Text: "Level 8".obs),
    SixtythreeItemModel(level3Text: "Level 9".obs),
    SixtythreeItemModel(level3Text: "Level 10".obs)
  ]);
}
