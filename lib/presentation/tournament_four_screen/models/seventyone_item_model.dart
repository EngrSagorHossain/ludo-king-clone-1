import '../../../core/app_export.dart';

/// This class is used in the [seventyone_item_widget] screen.
class SeventyoneItemModel {
  SeventyoneItemModel({
    this.level1Text,
    this.id,
  }) {
    level1Text = level1Text ?? Rx("Level 1");
    id = id ?? Rx("");
  }

  Rx<String>? level1Text;

  Rx<String>? id;
}
