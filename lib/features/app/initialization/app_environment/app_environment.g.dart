// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_environment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppEnvironment _$$_AppEnvironmentFromJson(Map<String, dynamic> json) =>
    _$_AppEnvironment(
      buildType: $enumDecode(_$BuildTypeEnumMap, json['buildType']),
      debugOptions:
          DebugOptions.fromJson(json['debugOptions'] as Map<String, dynamic>),
      debugPaintOptions: DebugPaintOptions.fromJson(
          json['debugPaintOptions'] as Map<String, dynamic>),
      enableBlocLogs: json['enableBlocLogs'] as bool,
      enableRoutingLogs: json['enableRoutingLogs'] as bool,
      enableDioLogs: json['enableDioLogs'] as bool,
      gRPCServerUrl: json['gRPCServerUrl'] as String,
      dynamicLinkPattern: json['dynamicLinkPattern'] as String,
      targetLinkPattern: json['targetLinkPattern'] as String,
    );

Map<String, dynamic> _$$_AppEnvironmentToJson(_$_AppEnvironment instance) =>
    <String, dynamic>{
      'buildType': _$BuildTypeEnumMap[instance.buildType]!,
      'debugOptions': instance.debugOptions,
      'debugPaintOptions': instance.debugPaintOptions,
      'enableBlocLogs': instance.enableBlocLogs,
      'enableRoutingLogs': instance.enableRoutingLogs,
      'enableDioLogs': instance.enableDioLogs,
      'gRPCServerUrl': instance.gRPCServerUrl,
      'dynamicLinkPattern': instance.dynamicLinkPattern,
      'targetLinkPattern': instance.targetLinkPattern,
    };

const _$BuildTypeEnumMap = {
  BuildType.debug: 'debug',
  BuildType.release: 'release',
};
