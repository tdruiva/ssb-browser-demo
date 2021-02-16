#!/bin/bash
# Dedupe pull-stream.
sed -i 's/2.26.0/3.6.14/' node_modules/pull-async-filter/package.json
rm -rf node_modules/pull-async-filter/node_modules/pull-stream
sed -i 's/3.5.0/3.6.14/' node_modules/pull-goodbye/package.json
rm -rf node_modules/pull-goodbye/node_modules/pull-stream

# Patch out Highlight.js.
sed -i -e '/highlight: function/,+8 d' -e '/highlight/d' node_modules/ssb-markdown/lib/block.js
sed -i '/highlight.js/d' node_modules/ssb-markdown/package.json
rm -rf node_modules/highlight.js

# Dedupe chloride.
sed -i 's/2.2.14/3.2.1/' node_modules/ssb-keys-mnemonic/package.json
rm -rf node_modules/ssb-keys-mnemonic/node_modules/chloride
rm -rf node_modules/ssb-keys-mnemonic/node_modules/sodium-native

# Dedupe tweetnacl.
sed -i 's/0.14.1/1.0.3/' node_modules/sodium-browserify/package.json
rm -rf node_modules/sodium-browserify/node_modules/tweetnacl
sed -i 's/0.x.x/1.0.3/' node_modules/tweetnacl-auth/package.json
rm -rf node_modules/tweetnacl-auth/node_modules/tweetnacl
sed -i 's/0.x.x/1.0.3/' node_modules/ed2curve/package.json
rm -rf node_modules/ed2curve/node_modules/tweetnacl

# Dedupe ssb-client.
sed -i 's/~4.7.8/^4.9.0/' node_modules/ssb-room/package.json
rm -rf node_modules/ssb-room/node_modules/ssb-client

# Dedupe ssb-config.
sed -i 's/~3.3.2/^3.4.5/' node_modules/ssb-room/package.json
rm -rf node_modules/ssb-room/node_modules/ssb-config

# Dedupe ssb-keys.
sed -i 's/7.2.1/8.0.2/' node_modules/ssb-client/package.json
rm -rf node_modules/ssb-client/node_modules/ssb-keys
sed -i 's/7.1.4/8.0.2/' node_modules/ssb-config/package.json
rm -rf node_modules/ssb-config/node_modules/ssb-keys
sed -i 's/7.0.7/8.0.2/' node_modules/ssb-validate/package.json
rm -rf node_modules/ssb-validate/node_modules/ssb-keys
rm -rf node_modules/ssb-room/node_modules/ssb-keys

# Dedupe secret-stack.
sed -i 's/6.3.0/^6.3.2/' node_modules/ssb-room/package.json
rm -rf node_modules/ssb-room/node_modules/secret-stack
