/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: peer/chaincode.proto
 *
 */

// 
// Copyright IBM Corp. 2016 All Rights Reserved.
// 
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
// 
// http://www.apache.org/licenses/LICENSE-2.0
// 
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import Foundation
import SwiftProtobuf


///   Confidentiality Levels
enum Protos_ConfidentialityLevel: SwiftProtobuf.Enum {
  typealias RawValue = Int
  case `public` // = 0
  case confidential // = 1
  case UNRECOGNIZED(Int)

  init() {
    self = .`public`
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .`public`
    case 1: self = .confidential
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  init?(name: String) {
    switch name {
    case "public": self = .`public`
    case "confidential": self = .confidential
    default: return nil
    }
  }

  init?(jsonName: String) {
    switch jsonName {
    case "PUBLIC": self = .`public`
    case "CONFIDENTIAL": self = .confidential
    default: return nil
    }
  }

  init?(protoName: String) {
    switch protoName {
    case "PUBLIC": self = .`public`
    case "CONFIDENTIAL": self = .confidential
    default: return nil
    }
  }

  var rawValue: Int {
    get {
      switch self {
      case .`public`: return 0
      case .confidential: return 1
      case .UNRECOGNIZED(let i): return i
      }
    }
  }

  var json: String {
    get {
      switch self {
      case .`public`: return "\"PUBLIC\""
      case .confidential: return "\"CONFIDENTIAL\""
      case .UNRECOGNIZED(let i): return String(i)
      }
    }
  }

  var hashValue: Int { return rawValue }

  var debugDescription: String {
    get {
      switch self {
      case .`public`: return ".public"
      case .confidential: return ".confidential"
      case .UNRECOGNIZED(let v): return ".UNRECOGNIZED(\(v))"
      }
    }
  }

}

///  ChaincodeID contains the path as specified by the deploy transaction
///  that created it as well as the hashCode that is generated by the
///  system for the path. From the user level (ie, CLI, REST API and so on)
///  deploy transaction is expected to provide the path and other requests
///  are expected to provide the hashCode. The other value will be ignored.
///  Internally, the structure could contain both values. For instance, the
///  hashCode will be set when first generated using the path
struct Protos_ChaincodeID: SwiftProtobuf.Message, SwiftProtobuf.Proto3Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf.ProtoNameProviding {
  public var swiftClassName: String {return "Protos_ChaincodeID"}
  public var protoMessageName: String {return "ChaincodeID"}
  public var protoPackageName: String {return "protos"}
  public static let _protobuf_fieldNames: FieldNameMap = [
    1: .same(proto: "path", swift: "path"),
    2: .same(proto: "name", swift: "name"),
    3: .same(proto: "version", swift: "version"),
  ]


  ///  deploy transaction will use the path
  var path: String = ""

  ///  all other requests will use the name (really a hashcode) generated by
  ///  the deploy transaction
  var name: String = ""

  ///  user friendly version name for the chaincode
  var version: String = ""

  init() {}

  public mutating func _protoc_generated_decodeField<T: SwiftProtobuf.FieldDecoder>(setter: inout T, protoFieldNumber: Int) throws {
    switch protoFieldNumber {
    case 1: try setter.decodeSingularField(fieldType: SwiftProtobuf.ProtobufString.self, value: &path)
    case 2: try setter.decodeSingularField(fieldType: SwiftProtobuf.ProtobufString.self, value: &name)
    case 3: try setter.decodeSingularField(fieldType: SwiftProtobuf.ProtobufString.self, value: &version)
    default: break
    }
  }

  public func _protoc_generated_traverse(visitor: SwiftProtobuf.Visitor) throws {
    if path != "" {
      try visitor.visitSingularField(fieldType: SwiftProtobuf.ProtobufString.self, value: path, fieldNumber: 1)
    }
    if name != "" {
      try visitor.visitSingularField(fieldType: SwiftProtobuf.ProtobufString.self, value: name, fieldNumber: 2)
    }
    if version != "" {
      try visitor.visitSingularField(fieldType: SwiftProtobuf.ProtobufString.self, value: version, fieldNumber: 3)
    }
  }

  public func _protoc_generated_isEqualTo(other: Protos_ChaincodeID) -> Bool {
    if path != other.path {return false}
    if name != other.name {return false}
    if version != other.version {return false}
    return true
  }
}

///   Carries the chaincode function and its arguments.
///   UnmarshalJSON in transaction.go converts the string-based REST/JSON input to
///   the []byte-based current ChaincodeInput structure.
struct Protos_ChaincodeInput: SwiftProtobuf.Message, SwiftProtobuf.Proto3Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf.ProtoNameProviding {
  public var swiftClassName: String {return "Protos_ChaincodeInput"}
  public var protoMessageName: String {return "ChaincodeInput"}
  public var protoPackageName: String {return "protos"}
  public static let _protobuf_fieldNames: FieldNameMap = [
    1: .same(proto: "args", swift: "args"),
  ]


  var args: [Data] = []

  init() {}

  public mutating func _protoc_generated_decodeField<T: SwiftProtobuf.FieldDecoder>(setter: inout T, protoFieldNumber: Int) throws {
    switch protoFieldNumber {
    case 1: try setter.decodeRepeatedField(fieldType: SwiftProtobuf.ProtobufBytes.self, value: &args)
    default: break
    }
  }

  public func _protoc_generated_traverse(visitor: SwiftProtobuf.Visitor) throws {
    if !args.isEmpty {
      try visitor.visitRepeatedField(fieldType: SwiftProtobuf.ProtobufBytes.self, value: args, fieldNumber: 1)
    }
  }

  public func _protoc_generated_isEqualTo(other: Protos_ChaincodeInput) -> Bool {
    if args != other.args {return false}
    return true
  }
}

///   Carries the chaincode specification. This is the actual metadata required for
///   defining a chaincode.
struct Protos_ChaincodeSpec: SwiftProtobuf.Message, SwiftProtobuf.Proto3Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf.ProtoNameProviding {
  public var swiftClassName: String {return "Protos_ChaincodeSpec"}
  public var protoMessageName: String {return "ChaincodeSpec"}
  public var protoPackageName: String {return "protos"}
  public static let _protobuf_fieldNames: FieldNameMap = [
    1: .same(proto: "type", swift: "type"),
    2: .unique(proto: "chaincode_id", json: "chaincodeId", swift: "chaincodeId"),
    3: .same(proto: "input", swift: "input"),
    4: .same(proto: "timeout", swift: "timeout"),
  ]

  private class _StorageClass {
    typealias ExtendedMessage = Protos_ChaincodeSpec
    var _type: Protos_ChaincodeSpec.TypeEnum = Protos_ChaincodeSpec.TypeEnum.undefined
    var _chaincodeId: Protos_ChaincodeID? = nil
    var _input: Protos_ChaincodeInput? = nil
    var _timeout: Int32 = 0

    init() {}

    func decodeField<T: SwiftProtobuf.FieldDecoder>(setter: inout T, protoFieldNumber: Int) throws {
      switch protoFieldNumber {
      case 1: try setter.decodeSingularField(fieldType: Protos_ChaincodeSpec.TypeEnum.self, value: &_type)
      case 2: try setter.decodeSingularMessageField(fieldType: Protos_ChaincodeID.self, value: &_chaincodeId)
      case 3: try setter.decodeSingularMessageField(fieldType: Protos_ChaincodeInput.self, value: &_input)
      case 4: try setter.decodeSingularField(fieldType: SwiftProtobuf.ProtobufInt32.self, value: &_timeout)
      default: break
      }
    }

    func traverse(visitor: SwiftProtobuf.Visitor) throws {
      if _type != Protos_ChaincodeSpec.TypeEnum.undefined {
        try visitor.visitSingularField(fieldType: Protos_ChaincodeSpec.TypeEnum.self, value: _type, fieldNumber: 1)
      }
      if let v = _chaincodeId {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if let v = _input {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
      if _timeout != 0 {
        try visitor.visitSingularField(fieldType: SwiftProtobuf.ProtobufInt32.self, value: _timeout, fieldNumber: 4)
      }
    }

    func isEqualTo(other: _StorageClass) -> Bool {
      if _type != other._type {return false}
      if _chaincodeId != other._chaincodeId {return false}
      if _input != other._input {return false}
      if _timeout != other._timeout {return false}
      return true
    }

    func copy() -> _StorageClass {
      let clone = _StorageClass()
      clone._type = _type
      clone._chaincodeId = _chaincodeId
      clone._input = _input
      clone._timeout = _timeout
      return clone
    }
  }

  private var _storage = _StorageClass()


  enum TypeEnum: SwiftProtobuf.Enum {
    typealias RawValue = Int
    case undefined // = 0
    case golang // = 1
    case node // = 2
    case car // = 3
    case java // = 4
    case UNRECOGNIZED(Int)

    init() {
      self = .undefined
    }

    init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .undefined
      case 1: self = .golang
      case 2: self = .node
      case 3: self = .car
      case 4: self = .java
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    init?(name: String) {
      switch name {
      case "undefined": self = .undefined
      case "golang": self = .golang
      case "node": self = .node
      case "car": self = .car
      case "java": self = .java
      default: return nil
      }
    }

    init?(jsonName: String) {
      switch jsonName {
      case "UNDEFINED": self = .undefined
      case "GOLANG": self = .golang
      case "NODE": self = .node
      case "CAR": self = .car
      case "JAVA": self = .java
      default: return nil
      }
    }

    init?(protoName: String) {
      switch protoName {
      case "UNDEFINED": self = .undefined
      case "GOLANG": self = .golang
      case "NODE": self = .node
      case "CAR": self = .car
      case "JAVA": self = .java
      default: return nil
      }
    }

    var rawValue: Int {
      get {
        switch self {
        case .undefined: return 0
        case .golang: return 1
        case .node: return 2
        case .car: return 3
        case .java: return 4
        case .UNRECOGNIZED(let i): return i
        }
      }
    }

    var json: String {
      get {
        switch self {
        case .undefined: return "\"UNDEFINED\""
        case .golang: return "\"GOLANG\""
        case .node: return "\"NODE\""
        case .car: return "\"CAR\""
        case .java: return "\"JAVA\""
        case .UNRECOGNIZED(let i): return String(i)
        }
      }
    }

    var hashValue: Int { return rawValue }

    var debugDescription: String {
      get {
        switch self {
        case .undefined: return ".undefined"
        case .golang: return ".golang"
        case .node: return ".node"
        case .car: return ".car"
        case .java: return ".java"
        case .UNRECOGNIZED(let v): return ".UNRECOGNIZED(\(v))"
        }
      }
    }

  }

  var type: Protos_ChaincodeSpec.TypeEnum {
    get {return _storage._type}
    set {_uniqueStorage()._type = newValue}
  }

  var chaincodeId: Protos_ChaincodeID {
    get {return _storage._chaincodeId ?? Protos_ChaincodeID()}
    set {_uniqueStorage()._chaincodeId = newValue}
  }
  public var hasChaincodeId: Bool {
    return _storage._chaincodeId != nil
  }
  public mutating func clearChaincodeId() {
    return _storage._chaincodeId = nil
  }

  var input: Protos_ChaincodeInput {
    get {return _storage._input ?? Protos_ChaincodeInput()}
    set {_uniqueStorage()._input = newValue}
  }
  public var hasInput: Bool {
    return _storage._input != nil
  }
  public mutating func clearInput() {
    return _storage._input = nil
  }

  var timeout: Int32 {
    get {return _storage._timeout}
    set {_uniqueStorage()._timeout = newValue}
  }

  init() {}

  public mutating func _protoc_generated_decodeField<T: SwiftProtobuf.FieldDecoder>(setter: inout T, protoFieldNumber: Int) throws {
    try _uniqueStorage().decodeField(setter: &setter, protoFieldNumber: protoFieldNumber)
  }

  public func _protoc_generated_traverse(visitor: SwiftProtobuf.Visitor) throws {
    try _storage.traverse(visitor: visitor)
  }

  public func _protoc_generated_isEqualTo(other: Protos_ChaincodeSpec) -> Bool {
    return _storage === other._storage || _storage.isEqualTo(other: other._storage)
  }

  private mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _storage.copy()
    }
    return _storage
  }
}

///   Specify the deployment of a chaincode.
///   TODO: Define `codePackage`.
struct Protos_ChaincodeDeploymentSpec: SwiftProtobuf.Message, SwiftProtobuf.Proto3Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf.ProtoNameProviding {
  public var swiftClassName: String {return "Protos_ChaincodeDeploymentSpec"}
  public var protoMessageName: String {return "ChaincodeDeploymentSpec"}
  public var protoPackageName: String {return "protos"}
  public static let _protobuf_fieldNames: FieldNameMap = [
    1: .unique(proto: "chaincode_spec", json: "chaincodeSpec", swift: "chaincodeSpec"),
    2: .unique(proto: "effective_date", json: "effectiveDate", swift: "effectiveDate"),
    3: .unique(proto: "code_package", json: "codePackage", swift: "codePackage"),
    4: .unique(proto: "exec_env", json: "execEnv", swift: "execEnv"),
  ]

  private class _StorageClass {
    typealias ExtendedMessage = Protos_ChaincodeDeploymentSpec
    var _chaincodeSpec: Protos_ChaincodeSpec? = nil
    var _effectiveDate: Google_Protobuf_Timestamp? = nil
    var _codePackage: Data = Data()
    var _execEnv: Protos_ChaincodeDeploymentSpec.ExecutionEnvironment = Protos_ChaincodeDeploymentSpec.ExecutionEnvironment.docker

    init() {}

    func decodeField<T: SwiftProtobuf.FieldDecoder>(setter: inout T, protoFieldNumber: Int) throws {
      switch protoFieldNumber {
      case 1: try setter.decodeSingularMessageField(fieldType: Protos_ChaincodeSpec.self, value: &_chaincodeSpec)
      case 2: try setter.decodeSingularMessageField(fieldType: Google_Protobuf_Timestamp.self, value: &_effectiveDate)
      case 3: try setter.decodeSingularField(fieldType: SwiftProtobuf.ProtobufBytes.self, value: &_codePackage)
      case 4: try setter.decodeSingularField(fieldType: Protos_ChaincodeDeploymentSpec.ExecutionEnvironment.self, value: &_execEnv)
      default: break
      }
    }

    func traverse(visitor: SwiftProtobuf.Visitor) throws {
      if let v = _chaincodeSpec {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if let v = _effectiveDate {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if _codePackage != Data() {
        try visitor.visitSingularField(fieldType: SwiftProtobuf.ProtobufBytes.self, value: _codePackage, fieldNumber: 3)
      }
      if _execEnv != Protos_ChaincodeDeploymentSpec.ExecutionEnvironment.docker {
        try visitor.visitSingularField(fieldType: Protos_ChaincodeDeploymentSpec.ExecutionEnvironment.self, value: _execEnv, fieldNumber: 4)
      }
    }

    func isEqualTo(other: _StorageClass) -> Bool {
      if _chaincodeSpec != other._chaincodeSpec {return false}
      if _effectiveDate != other._effectiveDate {return false}
      if _codePackage != other._codePackage {return false}
      if _execEnv != other._execEnv {return false}
      return true
    }

    func copy() -> _StorageClass {
      let clone = _StorageClass()
      clone._chaincodeSpec = _chaincodeSpec
      clone._effectiveDate = _effectiveDate
      clone._codePackage = _codePackage
      clone._execEnv = _execEnv
      return clone
    }
  }

  private var _storage = _StorageClass()


  enum ExecutionEnvironment: SwiftProtobuf.Enum {
    typealias RawValue = Int
    case docker // = 0
    case system // = 1
    case UNRECOGNIZED(Int)

    init() {
      self = .docker
    }

    init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .docker
      case 1: self = .system
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    init?(name: String) {
      switch name {
      case "docker": self = .docker
      case "system": self = .system
      default: return nil
      }
    }

    init?(jsonName: String) {
      switch jsonName {
      case "DOCKER": self = .docker
      case "SYSTEM": self = .system
      default: return nil
      }
    }

    init?(protoName: String) {
      switch protoName {
      case "DOCKER": self = .docker
      case "SYSTEM": self = .system
      default: return nil
      }
    }

    var rawValue: Int {
      get {
        switch self {
        case .docker: return 0
        case .system: return 1
        case .UNRECOGNIZED(let i): return i
        }
      }
    }

    var json: String {
      get {
        switch self {
        case .docker: return "\"DOCKER\""
        case .system: return "\"SYSTEM\""
        case .UNRECOGNIZED(let i): return String(i)
        }
      }
    }

    var hashValue: Int { return rawValue }

    var debugDescription: String {
      get {
        switch self {
        case .docker: return ".docker"
        case .system: return ".system"
        case .UNRECOGNIZED(let v): return ".UNRECOGNIZED(\(v))"
        }
      }
    }

  }

  var chaincodeSpec: Protos_ChaincodeSpec {
    get {return _storage._chaincodeSpec ?? Protos_ChaincodeSpec()}
    set {_uniqueStorage()._chaincodeSpec = newValue}
  }
  public var hasChaincodeSpec: Bool {
    return _storage._chaincodeSpec != nil
  }
  public mutating func clearChaincodeSpec() {
    return _storage._chaincodeSpec = nil
  }

  ///   Controls when the chaincode becomes executable.
  var effectiveDate: Google_Protobuf_Timestamp {
    get {return _storage._effectiveDate ?? Google_Protobuf_Timestamp()}
    set {_uniqueStorage()._effectiveDate = newValue}
  }
  public var hasEffectiveDate: Bool {
    return _storage._effectiveDate != nil
  }
  public mutating func clearEffectiveDate() {
    return _storage._effectiveDate = nil
  }

  var codePackage: Data {
    get {return _storage._codePackage}
    set {_uniqueStorage()._codePackage = newValue}
  }

  var execEnv: Protos_ChaincodeDeploymentSpec.ExecutionEnvironment {
    get {return _storage._execEnv}
    set {_uniqueStorage()._execEnv = newValue}
  }

  init() {}

  public mutating func _protoc_generated_decodeField<T: SwiftProtobuf.FieldDecoder>(setter: inout T, protoFieldNumber: Int) throws {
    try _uniqueStorage().decodeField(setter: &setter, protoFieldNumber: protoFieldNumber)
  }

  public func _protoc_generated_traverse(visitor: SwiftProtobuf.Visitor) throws {
    try _storage.traverse(visitor: visitor)
  }

  public func _protoc_generated_isEqualTo(other: Protos_ChaincodeDeploymentSpec) -> Bool {
    return _storage === other._storage || _storage.isEqualTo(other: other._storage)
  }

  private mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _storage.copy()
    }
    return _storage
  }
}

///   Carries the chaincode function and its arguments.
struct Protos_ChaincodeInvocationSpec: SwiftProtobuf.Message, SwiftProtobuf.Proto3Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf.ProtoNameProviding {
  public var swiftClassName: String {return "Protos_ChaincodeInvocationSpec"}
  public var protoMessageName: String {return "ChaincodeInvocationSpec"}
  public var protoPackageName: String {return "protos"}
  public static let _protobuf_fieldNames: FieldNameMap = [
    1: .unique(proto: "chaincode_spec", json: "chaincodeSpec", swift: "chaincodeSpec"),
    2: .unique(proto: "id_generation_alg", json: "idGenerationAlg", swift: "idGenerationAlg"),
  ]

  private class _StorageClass {
    typealias ExtendedMessage = Protos_ChaincodeInvocationSpec
    var _chaincodeSpec: Protos_ChaincodeSpec? = nil
    var _idGenerationAlg: String = ""

    init() {}

    func decodeField<T: SwiftProtobuf.FieldDecoder>(setter: inout T, protoFieldNumber: Int) throws {
      switch protoFieldNumber {
      case 1: try setter.decodeSingularMessageField(fieldType: Protos_ChaincodeSpec.self, value: &_chaincodeSpec)
      case 2: try setter.decodeSingularField(fieldType: SwiftProtobuf.ProtobufString.self, value: &_idGenerationAlg)
      default: break
      }
    }

    func traverse(visitor: SwiftProtobuf.Visitor) throws {
      if let v = _chaincodeSpec {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if _idGenerationAlg != "" {
        try visitor.visitSingularField(fieldType: SwiftProtobuf.ProtobufString.self, value: _idGenerationAlg, fieldNumber: 2)
      }
    }

    func isEqualTo(other: _StorageClass) -> Bool {
      if _chaincodeSpec != other._chaincodeSpec {return false}
      if _idGenerationAlg != other._idGenerationAlg {return false}
      return true
    }

    func copy() -> _StorageClass {
      let clone = _StorageClass()
      clone._chaincodeSpec = _chaincodeSpec
      clone._idGenerationAlg = _idGenerationAlg
      return clone
    }
  }

  private var _storage = _StorageClass()


  var chaincodeSpec: Protos_ChaincodeSpec {
    get {return _storage._chaincodeSpec ?? Protos_ChaincodeSpec()}
    set {_uniqueStorage()._chaincodeSpec = newValue}
  }
  public var hasChaincodeSpec: Bool {
    return _storage._chaincodeSpec != nil
  }
  public mutating func clearChaincodeSpec() {
    return _storage._chaincodeSpec = nil
  }

  ///   This field can contain a user-specified ID generation algorithm
  ///   If supplied, this will be used to generate a ID
  ///   If not supplied (left empty), sha256base64 will be used
  ///   The algorithm consists of two parts:
  ///    1, a hash function
  ///    2, a decoding used to decode user (string) input to bytes
  ///   Currently, SHA256 with BASE64 is supported (e.g. idGenerationAlg='sha256base64')
  var idGenerationAlg: String {
    get {return _storage._idGenerationAlg}
    set {_uniqueStorage()._idGenerationAlg = newValue}
  }

  init() {}

  public mutating func _protoc_generated_decodeField<T: SwiftProtobuf.FieldDecoder>(setter: inout T, protoFieldNumber: Int) throws {
    try _uniqueStorage().decodeField(setter: &setter, protoFieldNumber: protoFieldNumber)
  }

  public func _protoc_generated_traverse(visitor: SwiftProtobuf.Visitor) throws {
    try _storage.traverse(visitor: visitor)
  }

  public func _protoc_generated_isEqualTo(other: Protos_ChaincodeInvocationSpec) -> Bool {
    return _storage === other._storage || _storage.isEqualTo(other: other._storage)
  }

  private mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _storage.copy()
    }
    return _storage
  }
}