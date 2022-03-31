#!/bin/sh

dart pub install
export PATH="$PATH":"$HOME/.pub-cache/bin"
dart pub global activate protoc_plugin

SWIFT_OUT_DIR='lib/gen'
DART_OUT_DIR='lib/gen'
ANDR_OUT_DIR='example/build/flutter_blue/generated/source/proto/debug/java/com/pauldemarco/flutter_blue/'
PROTO_DIR='protos/flutterblue.proto'

protoc --dart_out=$DART_OUT_DIR \
    --java_out=$ANDR_OUT_DIR \
	$PROTO_DIR # --experimental_allow_proto3_optional