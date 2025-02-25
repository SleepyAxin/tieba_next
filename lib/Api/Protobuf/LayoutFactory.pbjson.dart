//
//  Generated code. Do not modify.
//  source: LayoutFactory.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use layoutFactoryDescriptor instead')
const LayoutFactory$json = {
  '1': 'LayoutFactory',
  '2': [
    {'1': 'layout', '3': 1, '4': 1, '5': 9, '10': 'layout'},
    {'1': 'feed', '3': 2, '4': 1, '5': 11, '6': '.LayoutFactory.FeedLayout', '10': 'feed'},
  ],
  '3': [LayoutFactory_FeedLayout$json],
};

@$core.Deprecated('Use layoutFactoryDescriptor instead')
const LayoutFactory_FeedLayout$json = {
  '1': 'FeedLayout',
  '2': [
    {'1': 'business_info', '3': 5, '4': 3, '5': 11, '6': '.LayoutFactory.FeedLayout.FeedKV', '10': 'businessInfo'},
  ],
  '3': [LayoutFactory_FeedLayout_FeedKV$json],
};

@$core.Deprecated('Use layoutFactoryDescriptor instead')
const LayoutFactory_FeedLayout_FeedKV$json = {
  '1': 'FeedKV',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
};

/// Descriptor for `LayoutFactory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List layoutFactoryDescriptor = $convert.base64Decode(
    'Cg1MYXlvdXRGYWN0b3J5EhYKBmxheW91dBgBIAEoCVIGbGF5b3V0Ei0KBGZlZWQYAiABKAsyGS'
    '5MYXlvdXRGYWN0b3J5LkZlZWRMYXlvdXRSBGZlZWQahQEKCkZlZWRMYXlvdXQSRQoNYnVzaW5l'
    'c3NfaW5mbxgFIAMoCzIgLkxheW91dEZhY3RvcnkuRmVlZExheW91dC5GZWVkS1ZSDGJ1c2luZX'
    'NzSW5mbxowCgZGZWVkS1YSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVl');

