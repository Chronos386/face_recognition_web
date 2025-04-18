// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_photos_codes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SavedPhotosCodesImpl _$$SavedPhotosCodesImplFromJson(
        Map<String, dynamic> json) =>
    _$SavedPhotosCodesImpl(
      codes: (json['codes'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$SavedPhotosCodesImplToJson(
        _$SavedPhotosCodesImpl instance) =>
    <String, dynamic>{
      'codes': instance.codes,
    };
