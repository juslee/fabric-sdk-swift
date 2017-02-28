class Chain {
  let name: String
  let clientContext: Client
  var peers = [Peer]()
  var orderers = [Orderer]()

  init(name: String, clientContext: Client) {
    self.name = name
    self.clientContext = clientContext
  }

  func addPeer(_ peer: Peer) {
    if self.peers.filter({ $0.getUrl() == peer.getUrl() }).isEmpty {
      self.peers.append(peer)
    } else {
      // Throw Error
    }
  }

  func removePeer(_ peer: Peer) {
    self.peers = self.peers.filter({ $0.getUrl() != peer.getUrl() })
  }

  func getPeers() -> [Peer] {
    return self.peers
  }

  func addOrderer(_ orderer: Orderer) {
    if self.orderers.filter({ $0.getUrl() == orderer.getUrl() }).isEmpty {
      self.orderers.append(orderer)
    } else {
      // Throw Error
    }
  }

  func removeOrderer(_ orderer: Orderer) {
    self.orderers = self.orderers.filter({ $0.getUrl() != orderer.getUrl() })
  }

  func getOrderers() -> [Orderer] {
    return self.orderers
  }

  func initializeChain() -> Bool {
    return false
  }

  func updateChain() -> Bool {
    return false
  }

  func isReadonly() -> Bool {
    return false
  }

  func queryInfo() -> Any? {
    // TODO return ChainInfo
    return nil
  }

  func queryBlock(blockNumber: Int) -> Any? {
    return nil
  }

  func queryTransaction(transactionId: Int) -> Any? {
    return nil
  }


}