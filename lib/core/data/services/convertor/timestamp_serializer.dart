import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

class TimestampSerializer implements JsonConverter<DateTime, dynamic> {
  const TimestampSerializer();

  @override
  DateTime fromJson(dynamic timestamp) => timestamp.toDate();

  @override
  Timestamp toJson(DateTime date) => Timestamp.fromDate(date);
}

FieldValue fieldValueToJson(FieldValue fieldValue) => fieldValue;

class FieldValueSerializer implements JsonConverter<FieldValue, dynamic> {
  const FieldValueSerializer();

  // TODO: add a better way to handle the timestamp
  @override
  FieldValue fromJson(dynamic json) => FieldValue.serverTimestamp();

  @override
  dynamic toJson(FieldValue fieldValue) => fieldValue;
}
