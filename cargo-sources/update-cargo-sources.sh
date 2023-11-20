#!/bin/bash

[ ! -d ".venv" ] && python3 -m venv ".venv" # Create virtual environment if not found
source ".venv/bin/activate" || exit 1 # Quit early in case activation fails
pip install toml aiohttp
python3 flatpak-cargo-generator.py ../Cargo.lock -o ../cargo-sources.json
