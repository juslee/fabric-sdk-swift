protocol KeyValueStoreProtocol {
  func getValue(name: String)
  func setValue(name: String, value: String)
}
