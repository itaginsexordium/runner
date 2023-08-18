// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'debug_paint_option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DebugPaintOptions _$$_DebugPaintOptionsFromJson(Map<String, dynamic> json) =>
    _$_DebugPaintOptions(
      debugPaintSizeEnabled: json['debugPaintSizeEnabled'] as bool? ?? false,
      debugPaintBaselinesEnabled:
          json['debugPaintBaselinesEnabled'] as bool? ?? false,
      debugPaintPointersEnabled:
          json['debugPaintPointersEnabled'] as bool? ?? false,
      debugPaintLayerBordersEnabled:
          json['debugPaintLayerBordersEnabled'] as bool? ?? false,
      debugRepaintRainbowEnabled:
          json['debugRepaintRainbowEnabled'] as bool? ?? false,
    );

Map<String, dynamic> _$$_DebugPaintOptionsToJson(
        _$_DebugPaintOptions instance) =>
    <String, dynamic>{
      'debugPaintSizeEnabled': instance.debugPaintSizeEnabled,
      'debugPaintBaselinesEnabled': instance.debugPaintBaselinesEnabled,
      'debugPaintPointersEnabled': instance.debugPaintPointersEnabled,
      'debugPaintLayerBordersEnabled': instance.debugPaintLayerBordersEnabled,
      'debugRepaintRainbowEnabled': instance.debugRepaintRainbowEnabled,
    };
