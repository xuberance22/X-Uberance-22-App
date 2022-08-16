// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'participants.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Participant _$ParticipantFromJson(Map<String, dynamic> json) => Participant(
contactNum: json['contact_num'] as int,
name: json['name'] as String,
uniqueId: json['unique_id'] as String,
);

Map<String, dynamic> _$ParticipantToJson(Participant instance) =>
<String, dynamic>{
'unique_id': instance.uniqueId,
'contact_num': instance.contactNum,
'name': instance.name,
};
