//
//  Generated code. Do not modify.
//  source: Error.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use errorDescriptor instead')
const Error$json = {
  '1': 'Error',
  '2': [
    {'1': 'errorno', '3': 1, '4': 1, '5': 5, '10': 'errorno'},
    {'1': 'errmsg', '3': 2, '4': 1, '5': 9, '10': 'errmsg'},
    {'1': 'usermsg', '3': 3, '4': 1, '5': 9, '10': 'usermsg'},
  ],
};

/// Descriptor for `Error`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List errorDescriptor = $convert.base64Decode(
    'CgVFcnJvchIYCgdlcnJvcm5vGAEgASgFUgdlcnJvcm5vEhYKBmVycm1zZxgCIAEoCVIGZXJybX'
    'NnEhgKB3VzZXJtc2cYAyABKAlSB3VzZXJtc2c=');

