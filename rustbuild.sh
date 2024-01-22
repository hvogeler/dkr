#!/bin/bash
cargo clean
cargo build --release --target=x86_64-unknown-linux-musl
cargo build --release
