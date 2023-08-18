// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'debug_option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DebugOptions _$$_DebugOptionsFromJson(Map<String, dynamic> json) =>
    _$_DebugOptions(
      showPerformanceOverlay: json['showPerformanceOverlay'] as bool? ?? false,
      debugShowMaterialGrid: json['debugShowMaterialGrid'] as bool? ?? false,
      checkerboardRasterCacheImages:
          json['checkerboardRasterCacheImages'] as bool? ?? false,
      checkerboardOffscreenLayers:
          json['checkerboardOffscreenLayers'] as bool? ?? false,
      showSemanticsDebugger: json['showSemanticsDebugger'] as bool? ?? false,
      debugShowCheckedModeBanner:
          json['debugShowCheckedModeBanner'] as bool? ?? false,
    );

Map<String, dynamic> _$$_DebugOptionsToJson(_$_DebugOptions instance) =>
    <String, dynamic>{
      'showPerformanceOverlay': instance.showPerformanceOverlay,
      'debugShowMaterialGrid': instance.debugShowMaterialGrid,
      'checkerboardRasterCacheImages': instance.checkerboardRasterCacheImages,
      'checkerboardOffscreenLayers': instance.checkerboardOffscreenLayers,
      'showSemanticsDebugger': instance.showSemanticsDebugger,
      'debugShowCheckedModeBanner': instance.debugShowCheckedModeBanner,
    };
