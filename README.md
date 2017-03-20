# Hyperledger Fabric Client SDK for Swift

## Building
```
swift build -Xlinker -lz
```

## Generate protobuf code
Build SwiftProtobuf

```
swift package update
cd Packages
cd SwiftProtobuf-<version>
swift build
cp .build/debug/protoc-gen-swift /usr/local/bin
cd ../../
```

Compile the protos
```
Scripts/compile_protos.sh
```
The generated protobuf code will be located at Sources/Protos.

Take note that orderer/configuration.proto has been renamed to orderer/orderer_configuration.proto and peer/configuration.proto to peer/peer_configuration.proto due to swift package naming conflicts.
