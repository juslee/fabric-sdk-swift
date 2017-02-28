#!/bin/bash

set -eux

# To set a proto root for a set of protos, create a .protoroot file in one of the parent directories
# which you wish to use as the proto root.  If no .protoroot file exists within fabric/.../<your_proto>
# then the proto root for that proto is inferred to be its containing directory.

# Find explicit proto roots
PROTO_ROOT_FILES="$(find . -name ".protoroot")"
PROTO_ROOT_DIRS="$(dirname $PROTO_ROOT_FILES)"

for dir in $PROTO_ROOT_DIRS; do
echo Working on dir $dir
  # As this is a proto root, and there may be subdirectories with protos, compile the protos for each sub-directory which contains them
	for protos in $(find "$dir" -name '*.proto' -exec dirname {} \; | sort | uniq) ; do
	  protoc --proto_path="$dir" --swift_out=./Sources/Protos "$protos"/*.proto
	done
done
