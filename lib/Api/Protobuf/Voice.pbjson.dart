//
//  Generated code. Do not modify.
//  source: Voice.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use voiceDescriptor instead')
const Voice$json = {
  '1': 'Voice',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 5, '10': 'type'},
    {'1': 'during_time', '3': 2, '4': 1, '5': 5, '10': 'duringTime'},
    {'1': 'voice_md5', '3': 3, '4': 1, '5': 9, '10': 'voiceMd5'},
    {'1': 'voice_url', '3': 4, '4': 1, '5': 9, '10': 'voiceUrl'},
    {'1': 'uid', '3': 5, '4': 1, '5': 3, '10': 'uid'},
  ],
};

/// Descriptor for `Voice`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List voiceDescriptor = $convert.base64Decode(
    'CgVWb2ljZRISCgR0eXBlGAEgASgFUgR0eXBlEh8KC2R1cmluZ190aW1lGAIgASgFUgpkdXJpbm'
    'dUaW1lEhsKCXZvaWNlX21kNRgDIAEoCVIIdm9pY2VNZDUSGwoJdm9pY2VfdXJsGAQgASgJUgh2'
    'b2ljZVVybBIQCgN1aWQYBSABKANSA3VpZA==');

