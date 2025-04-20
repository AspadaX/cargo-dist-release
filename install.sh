#!/bin/bash

if ! command -v cargo-dist &> /dev/null
then
    echo "cargo-dist not found. Installing..."
    cargo install cargo-dist --locked
else
    echo "cargo-dist is already installed. Skip installing it."
fi