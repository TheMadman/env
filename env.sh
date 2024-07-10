#!/bin/bash -i

export PREFIX="$(realpath $(dirname "$0"))"
export PATH="$PREFIX"/bin:"$PATH"
export LD_LIBRARY_PATH="$PREFIX"/lib:"$LD_LIBRARY_PATH"
export LIBRARY_PATH="$LD_LIBRARY_PATH"
export CPATH="$PREFIX"/include:"$CPATH"

export PS1="(env: $(echo "$PREFIX" | sed -E s."$HOME".~.)) $PS1"

mkdir -p "$PREFIX"/{bin,lib,include}

echo "Environment starting, use 'exit' to exit"
bash --norc --noprofile -i
