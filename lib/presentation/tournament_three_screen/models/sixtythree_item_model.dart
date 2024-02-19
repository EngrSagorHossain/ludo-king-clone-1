import '../../../core/app_export.dart';

/// This class is used in the [sixtythree_item_widget] screen.
class SixtythreeItemModel {
  SixtythreeItemModel({
    this.level3Text,
    this.id,
  }) {
    level3Text = level3Text ?? Rx("Level 3");
    id = id ?? Rx("");
  }

  Rx<String>? level3Text;

  Rx<String>? id;
}
