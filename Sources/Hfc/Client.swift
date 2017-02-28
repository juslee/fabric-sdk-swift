
/**
    Main interaction handler with end user. A client instance provides a handler to interact
    with a network of peers, orderers and optionally member services. An application using the
    SDK may need to interact with multiple networks, each through a separate instance of the Client.
    
    Each client when initially created should be initialized with configuration data from the
    consensus service, which includes a list of trusted roots, orderer certificates and IP addresses,
    and a list of peer certificates and IP addresses that it can access. This must be done out of band
    as part of bootstrapping the application environment. It is also the responsibility of the application
    to maintain the configuration of a client as the SDK does not persist this object.
    
    Each Client instance can maintain several {@link Chain} instances representing channels and the associated
    private ledgers.
 */
class Client { 
  var chains = [String: Chain]()
  
  init () {
  }

  /**
      Returns a chain instance with the given name. This represents a channel and its associated ledger
      (as explained above), and this call returns an empty object. To initialize the chain in the blockchain network,
      a list of participating endorsers and orderer peers must be configured first on the returned object.

      - Parameter name: The name of the chain.  Recommend using namespaces to avoid collision.
      - Returns: The uninitialized chain instance.
      - Throws: XXX-Error if the chain by that name already exists in the application's state store
	 */
  func newChain(name: String) -> Chain? {
    guard self.chains[name] != nil else {
      // TODO: change to throw error and logs
      return nil
    } 
    
    let chain = Chain(name: name, clientContext: self)
		self.chains[name] = chain
		return chain
  }

  func getChain(name: String) -> Chain? {
    guard let chain = self.chains[name] else {
      // TODO: change to throw error and logs
      return nil
    }

    // TODO: integrate reading from state store

    return chain;
  }

  func queryChainInfo(name: String, peers: [Peer]) -> Chain? {
    return nil
  }

  func setStateStore(keyValueStore: KeyValueStoreProtocol) {

  }

  func getStateStore() -> KeyValueStoreProtocol? {
		return nil
	}

  func setCryptoSuite(cryptoSuite: CryptoSuiteProtocol) {
		
	}

	func getCryptoSuite() -> CryptoSuiteProtocol? {
		return nil
	}

  func setUserContext(user: User, skipPersistence: Bool) {

  }
  
  func getUserContext(name: String) -> User? {
    return nil
  }
}