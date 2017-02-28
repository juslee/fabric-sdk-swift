protocol KeyProtocol {
  func getSKI() -> [UInt8]
  func isSymmetric() -> Bool
  func isPrivate() -> Bool
  func toBytes() -> [UInt8]
}
