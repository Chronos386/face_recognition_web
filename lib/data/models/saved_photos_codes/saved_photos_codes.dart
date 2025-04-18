// data/models/saved_photos_codes/saved_photos_codes.dart
// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';
part 'saved_photos_codes.freezed.dart';
part 'saved_photos_codes.g.dart';

@freezed
class SavedPhotosCodes with _$SavedPhotosCodes {
  const factory SavedPhotosCodes({
    required List<int> codes,
  }) = _SavedPhotosCodes;

  factory SavedPhotosCodes.fromJson(Map<String, dynamic> json) => _$SavedPhotosCodesFromJson(json);
}