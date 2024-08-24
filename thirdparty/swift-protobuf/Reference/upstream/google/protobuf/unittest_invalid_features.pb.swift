// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/protobuf/unittest_invalid_features.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Protocol Buffers - Google's data interchange format
// Copyright 2023 Google Inc.  All rights reserved.
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

struct Pb_TestInvalidFeatures: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var repeatedFeature: [Int32] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Extension support defined in unittest_invalid_features.proto.

// MARK: - Extension Properties

// Swift Extensions on the extended Messages to add easy access to the declared
// extension fields. The names are based on the extension field name from the proto
// declaration. To avoid naming collisions, the names are prefixed with the name of
// the scope where the extend directive occurs.

extension SwiftProtobuf.Google_Protobuf_FeatureSet {

  var Pb_testInvalid: Pb_TestInvalidFeatures {
    get {return getExtensionValue(ext: Pb_Extensions_test_invalid) ?? Pb_TestInvalidFeatures()}
    set {setExtensionValue(ext: Pb_Extensions_test_invalid, value: newValue)}
  }
  /// Returns true if extension `Pb_Extensions_test_invalid`
  /// has been explicitly set.
  var hasPb_testInvalid: Bool {
    return hasExtensionValue(ext: Pb_Extensions_test_invalid)
  }
  /// Clears the value of extension `Pb_Extensions_test_invalid`.
  /// Subsequent reads from it will return its default value.
  mutating func clearPb_testInvalid() {
    clearExtensionValue(ext: Pb_Extensions_test_invalid)
  }

}

// MARK: - File's ExtensionMap: Pb_UnittestInvalidFeatures_Extensions

/// A `SwiftProtobuf.SimpleExtensionMap` that includes all of the extensions defined by
/// this .proto file. It can be used any place an `SwiftProtobuf.ExtensionMap` is needed
/// in parsing, or it can be combined with other `SwiftProtobuf.SimpleExtensionMap`s to create
/// a larger `SwiftProtobuf.SimpleExtensionMap`.
let Pb_UnittestInvalidFeatures_Extensions: SwiftProtobuf.SimpleExtensionMap = [
  Pb_Extensions_test_invalid
]

// Extension Objects - The only reason these might be needed is when manually
// constructing a `SimpleExtensionMap`, otherwise, use the above _Extension Properties_
// accessors for the extension fields on the messages directly.

let Pb_Extensions_test_invalid = SwiftProtobuf.MessageExtension<SwiftProtobuf.OptionalMessageExtensionField<Pb_TestInvalidFeatures>, SwiftProtobuf.Google_Protobuf_FeatureSet>(
  _protobuf_fieldNumber: 9996,
  fieldName: "pb.test_invalid"
)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "pb"

extension Pb_TestInvalidFeatures: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".TestInvalidFeatures"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "repeated_feature"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedInt32Field(value: &self.repeatedFeature) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.repeatedFeature.isEmpty {
      try visitor.visitRepeatedInt32Field(value: self.repeatedFeature, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Pb_TestInvalidFeatures, rhs: Pb_TestInvalidFeatures) -> Bool {
    if lhs.repeatedFeature != rhs.repeatedFeature {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
