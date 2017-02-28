protocol CryptoSuiteProtocol {
  func generateKey(opts: Any) -> KeyProtocol
  func deriveKey(key: KeyProtocol, opts: Any) -> KeyProtocol
  func importKey(raw: [UInt8], opts: Any) -> KeyProtocol
  func getKey(ski: [UInt8]) -> KeyProtocol
  func hash(msg: [UInt8], opts: Any) -> String
  func sign(key: KeyProtocol, digest: [UInt8], opts: Any) -> [UInt8]
  func verify(key: KeyProtocol, signature: [UInt8], digest: [UInt8]) -> Bool
  func encrypt(key: KeyProtocol, plainText: [UInt8], opts: Any) -> [UInt8]
  func decrypt(key: KeyProtocol, cipherText: [UInt8], opts: Any) -> [UInt8]
}
